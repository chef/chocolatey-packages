<#
.SYNOPSIS
    Tests the Chef Infra Client update script.

.DESCRIPTION
    This script tests the update.ps1 script by creating a backup of the current files,
    running the update script with version 18.7.10, validating the output, and then
    restoring the original files.

.EXAMPLE
    .\test.ps1
#>

$ErrorActionPreference = "Stop"

# Paths
$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$nuspecPath = Join-Path $scriptRoot "chef.nuspec"
$installScriptPath = Join-Path $scriptRoot "tools\chocolateyinstall.ps1"
$updateScriptPath = Join-Path $scriptRoot "update.ps1"

# Test configuration
$testVersion = "18.7.10"
$expectedChecksum = "AD42B9FD152815C778C80FC12F0B24643677C097130F62AB70E73CC5A837A9B4"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Chef Infra Client Update Script Test" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Create backups
Write-Host "[1/5] Creating backups..." -ForegroundColor Yellow
$nuspecBackup = "$nuspecPath.bak"
$installScriptBackup = "$installScriptPath.bak"

Copy-Item $nuspecPath $nuspecBackup -Force
Copy-Item $installScriptPath $installScriptBackup -Force
Write-Host "Backups created" -ForegroundColor Green

# Step 2: Run the update script
Write-Host ""
Write-Host "[2/5] Running update script with version $testVersion..." -ForegroundColor Yellow

try {
    & $updateScriptPath -Version $testVersion
    Write-Host "Update script completed" -ForegroundColor Green
}
catch {
    Write-Host "Update script failed: $_" -ForegroundColor Red
    
    # Restore backups
    Copy-Item $nuspecBackup $nuspecPath -Force
    Copy-Item $installScriptBackup $installScriptPath -Force
    Remove-Item $nuspecBackup, $installScriptBackup -Force
    
    throw "Test failed during update script execution"
}

# Step 3: Validate chocolateyinstall.ps1
Write-Host ""
Write-Host "[3/5] Validating chocolateyinstall.ps1..." -ForegroundColor Yellow

$installContent = Get-Content $installScriptPath -Raw

# Check version
if ($installContent -match '\$version = ''([^'']+)''') {
    $actualVersion = $matches[1]
    if ($actualVersion -eq $testVersion) {
        Write-Host "  [OK] Version is correct: $actualVersion" -ForegroundColor Green
    }
    else {
        throw "Version mismatch. Expected: $testVersion, Actual: $actualVersion"
    }
}
else {
    throw "Could not find version in chocolateyinstall.ps1"
}

# Check checksum (handle both single and double quotes)
if ($installContent -match 'checksum64\s*=\s*[''"]([^''"]+)[''"]') {
    $actualChecksum = $matches[1]
    if ($actualChecksum -eq $expectedChecksum) {
        Write-Host "  [OK] Checksum is correct: $actualChecksum" -ForegroundColor Green
    }
    else {
        throw "Checksum mismatch. Expected: $expectedChecksum, Actual: $actualChecksum"
    }
}
else {
    throw "Could not find checksum64 in chocolateyinstall.ps1"
}

# Check URL structure (it should use $version variable)
$expectedUrlPattern = 'url64\s*=\s*"https://packages\.chef\.io/files/stable/chef/\$version/windows/2016/chef-client-\$version-1-x64\.msi"'
if ($installContent -match $expectedUrlPattern) {
    Write-Host "  [OK] URL pattern is correct" -ForegroundColor Green
}
else {
    throw "URL pattern not found in chocolateyinstall.ps1"
}

# Check that the structure and other properties are preserved
$expectedStructure = @(
    'packageName\s*=\s*''chef-client''',
    'fileType\s*=\s*''msi''',
    'silentArgs\s*=\s*''/quiet''',
    'validExitCodes\s*=\s*@\(0\)',
    'checksumType64\s*=\s*''sha256''',
    'Install-ChocolateyPackage @packageArgs'
)

foreach ($pattern in $expectedStructure) {
    if ($installContent -match $pattern) {
        Write-Host "  [OK] Found expected pattern: $pattern" -ForegroundColor Green
    }
    else {
        throw "Missing expected pattern in chocolateyinstall.ps1: $pattern"
    }
}

# Step 4: Validate chef.nuspec
Write-Host ""
Write-Host "[4/5] Validating chef.nuspec..." -ForegroundColor Yellow

$nuspecContent = Get-Content $nuspecPath -Raw

# Check version in nuspec
if ($nuspecContent -match '<version>([^<]+)</version>') {
    $nuspecVersion = $matches[1]
    if ($nuspecVersion -eq $testVersion) {
        Write-Host "  [OK] Nuspec version is correct: $nuspecVersion" -ForegroundColor Green
    }
    else {
        throw "Nuspec version mismatch. Expected: $testVersion, Actual: $nuspecVersion"
    }
}
else {
    throw "Could not find version in chef.nuspec"
}

# Check that essential elements are preserved
$expectedNuspecElements = @(
    '<id>chef-client</id>',
    '<title>Chef Infra Client</title>',
    '<authors>Chef Software, Inc.</authors>',
    '<file src="tools\**" target="tools"/>',
    'xmlns="http://schemas.microsoft.com/packaging/2015/06/nuspec.xsd"'
)

foreach ($element in $expectedNuspecElements) {
    if ($nuspecContent -match [regex]::Escape($element)) {
        Write-Host "  [OK] Found expected element: $element" -ForegroundColor Green
    }
    else {
        throw "Missing expected element in chef.nuspec: $element"
    }
}

# Step 5: Restore backups
Write-Host ""
Write-Host "[5/5] Restoring original files..." -ForegroundColor Yellow

Copy-Item $nuspecBackup $nuspecPath -Force
Copy-Item $installScriptBackup $installScriptPath -Force
Remove-Item $nuspecBackup, $installScriptBackup -Force

Write-Host "Original files restored" -ForegroundColor Green

# Summary
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "[PASS] All tests passed successfully!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "The update script correctly:" -ForegroundColor White
Write-Host "  - Updates the version to $testVersion" -ForegroundColor White
Write-Host "  - Updates the checksum to the correct value" -ForegroundColor White
Write-Host "  - Updates the download URL with the new version" -ForegroundColor White
Write-Host "  - Preserves all package configuration" -ForegroundColor White
Write-Host "  - Updates the nuspec version" -ForegroundColor White
Write-Host ""
