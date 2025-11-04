<#
.SYNOPSIS
    Updates the Chef Infra Client Chocolatey package to a new version.

.DESCRIPTION
    This script updates the chocolateyinstall.ps1 and chef.nuspec files with a new version
    and downloads the corresponding MSI to calculate its SHA256 checksum.

.PARAMETER Version
    The version of Chef Infra Client to update to (e.g., "18.7.10")

.EXAMPLE
    .\update.ps1 -Version "18.7.10"
#>

param(
    [Parameter(Mandatory=$true)]
    [string]$Version
)

$ErrorActionPreference = "Stop"

# Paths
$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$nuspecPath = Join-Path $scriptRoot "chef.nuspec"
$installScriptPath = Join-Path $scriptRoot "tools\chocolateyinstall.ps1"

# Validate version format (basic check)
if ($Version -notmatch '^\d+\.\d+\.\d+$') {
    throw "Version must be in format X.Y.Z (e.g., 18.7.10)"
}

Write-Host "Updating Chef Infra Client to version $Version..." -ForegroundColor Cyan

# Step 1: Download the MSI to calculate checksum
$url = "https://packages.chef.io/files/stable/chef/$Version/windows/2016/chef-client-$Version-1-x64.msi"
$tempFile = Join-Path $env:TEMP "chef-client-$Version-1-x64.msi"

Write-Host "Downloading MSI from: $url" -ForegroundColor Yellow

try {
    $webClient = New-Object System.Net.WebClient
    $webClient.DownloadFile($url, $tempFile)
    Write-Host "Downloaded successfully to: $tempFile" -ForegroundColor Green
    
    # Open the folder containing the downloaded file
    $tempFolder = Split-Path $tempFile -Parent
    Write-Host "Opening folder: $tempFolder" -ForegroundColor Cyan
    Start-Process $tempFolder
}
catch {
    throw "Failed to download MSI from $url. Error: $_"
}

# Step 2: Calculate SHA256 checksum
Write-Host "Calculating SHA256 checksum..." -ForegroundColor Yellow
Write-Host "Command: certutil -hashfile `"$tempFile`" SHA256" -ForegroundColor Gray

# Use certutil for checksum calculation
$certutilOutput = certutil -hashfile $tempFile SHA256
$checksum = ($certutilOutput | Select-Object -Index 1).Trim().ToUpper()

Write-Host "Checksum: $checksum" -ForegroundColor Green

try {
    # Step 3: Update chocolateyinstall.ps1
    Write-Host "Updating $installScriptPath..." -ForegroundColor Yellow

    $installContent = Get-Content $installScriptPath -Raw

    # Update version
    $installContent = $installContent -replace '\$version = ''[^'']+''',"`$version = '$Version'"

    # Update checksum (handle both single and double quotes)
    $installContent = $installContent -replace 'checksum64\s*=\s*[''"][^''"]+[''"]',"checksum64     = '$checksum'"

    Set-Content -Path $installScriptPath -Value $installContent -NoNewline
    Write-Host "Updated $installScriptPath" -ForegroundColor Green

    # Step 4: Update chef.nuspec
    Write-Host "Updating $nuspecPath..." -ForegroundColor Yellow

    $nuspecContent = Get-Content $nuspecPath -Raw

    # Update version in nuspec
    $nuspecContent = $nuspecContent -replace '<version>[^<]+</version>',"<version>$Version</version>"

    Set-Content -Path $nuspecPath -Value $nuspecContent -NoNewline
    Write-Host "Updated $nuspecPath" -ForegroundColor Green

    # Clean up temp file only after successful update
    Remove-Item $tempFile -Force -ErrorAction SilentlyContinue
    Write-Host "Cleaned up temporary file" -ForegroundColor Green
}
catch {
    Write-Host "`nERROR: Update failed!" -ForegroundColor Red
    Write-Host "Downloaded file left at: $tempFile" -ForegroundColor Yellow
    Write-Host "You can manually verify the checksum with:" -ForegroundColor Yellow
    Write-Host "  Get-FileHash -Path `"$tempFile`" -Algorithm SHA256" -ForegroundColor Cyan
    throw $_
}

Write-Host "`nUpdate completed successfully!" -ForegroundColor Green

# Step 5: Pack the package
Write-Host "`n[5/5] Packing the Chocolatey package..." -ForegroundColor Cyan
$packCommand = "choco pack `"$nuspecPath`""
Write-Host "Running: $packCommand" -ForegroundColor Gray

try {
    Push-Location $scriptRoot
    $packOutput = choco pack "$nuspecPath" 2>&1
    Pop-Location
    
    Write-Host $packOutput
    
    # Find the generated .nupkg file
    $nupkgFile = Join-Path $scriptRoot "chef-client.$Version.nupkg"
    
    if (-not (Test-Path $nupkgFile)) {
        # Check for colon in filename (common issue)
        $nupkgFileWithColon = Join-Path $scriptRoot "chef-client:$Version.nupkg"
        if (Test-Path $nupkgFileWithColon) {
            Write-Host "`nWARNING: Package file has colon in name, renaming..." -ForegroundColor Yellow
            Rename-Item $nupkgFileWithColon $nupkgFile
            Write-Host "Renamed to: $nupkgFile" -ForegroundColor Green
        }
        else {
            throw "Could not find generated .nupkg file at: $nupkgFile"
        }
    }
    
    Write-Host "`nPackage created successfully: $nupkgFile" -ForegroundColor Green
}
catch {
    Write-Host "`nERROR: Failed to pack the package!" -ForegroundColor Red
    throw $_
}

# Step 6: Prompt for API key and push
Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "Ready to Push to Chocolatey.org" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "To push this package, you need your Chocolatey API key." -ForegroundColor White
Write-Host ""
Write-Host "How to get your API key:" -ForegroundColor Yellow
Write-Host "  1. Go to: https://community.chocolatey.org/account" -ForegroundColor White
Write-Host "  2. Sign in to your account" -ForegroundColor White
Write-Host "  3. Scroll down to 'API Key' section" -ForegroundColor White
Write-Host "  4. Copy your API key" -ForegroundColor White
Write-Host ""

$pushChoice = Read-Host "Do you want to push the package now? (Y/N)"

if ($pushChoice -eq 'Y' -or $pushChoice -eq 'y') {
    Write-Host ""
    $apiKey = Read-Host "Enter your Chocolatey API key" -AsSecureString
    
    # Convert SecureString to plain text for the command
    $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($apiKey)
    $apiKeyPlain = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)
    [System.Runtime.InteropServices.Marshal]::ZeroFreeBSTR($BSTR)
    
    if ([string]::IsNullOrWhiteSpace($apiKeyPlain)) {
        Write-Host "`nERROR: API key cannot be empty!" -ForegroundColor Red
        Write-Host "Package is ready at: $nupkgFile" -ForegroundColor Yellow
        Write-Host "You can push it manually with:" -ForegroundColor Yellow
        Write-Host "  choco push `"$nupkgFile`" --api-key '<your-key>' --source=https://push.chocolatey.org/" -ForegroundColor Cyan
        exit 1
    }
    
    Write-Host "`nPushing package to Chocolatey.org..." -ForegroundColor Cyan
    Write-Host "Command: choco push `"$nupkgFile`" --api-key '***' --source=https://push.chocolatey.org/" -ForegroundColor Gray
    
    try {
        $pushOutput = choco push "$nupkgFile" --api-key $apiKeyPlain --source=https://push.chocolatey.org/ 2>&1
        Write-Host $pushOutput
        
        if ($LASTEXITCODE -eq 0) {
            Write-Host "`n========================================" -ForegroundColor Green
            Write-Host "SUCCESS! Package published to Chocolatey.org" -ForegroundColor Green
            Write-Host "========================================" -ForegroundColor Green
            Write-Host ""
            Write-Host "Your package will be available at:" -ForegroundColor White
            Write-Host "  https://community.chocolatey.org/packages/chef-client/$Version" -ForegroundColor Cyan
        }
        else {
            throw "Push command failed with exit code: $LASTEXITCODE"
        }
    }
    catch {
        Write-Host "`nERROR: Failed to push package!" -ForegroundColor Red
        Write-Host $_ -ForegroundColor Red
        Write-Host "`nPackage is ready at: $nupkgFile" -ForegroundColor Yellow
        Write-Host "You can try pushing manually with:" -ForegroundColor Yellow
        Write-Host "  choco push `"$nupkgFile`" --api-key '<your-key>' --source=https://push.chocolatey.org/" -ForegroundColor Cyan
        exit 1
    }
}
else {
    Write-Host "`nSkipping push." -ForegroundColor Yellow
    Write-Host "Package is ready at: $nupkgFile" -ForegroundColor Green
    Write-Host ""
    Write-Host "To push manually later, run:" -ForegroundColor White
    Write-Host "  choco push `"$nupkgFile`" --api-key '<your-key>' --source=https://push.chocolatey.org/" -ForegroundColor Cyan
}
