$version = '4.13.3'
$url = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'chefdk'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url            = $url
    url64bit       = $url64
    checksum       = '8b077720c4048d2de4f7b0223b1a6f52061e187b2cdde5c143b5674635288645'
    checksumType   = 'sha256'
    checksum64     = 'da07470d2e9838b93bce80f9b37bce01d6f6793fdd5b670c0c3990e25ec1423e'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
