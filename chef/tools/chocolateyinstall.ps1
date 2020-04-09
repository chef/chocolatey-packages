$version = '15.9.17'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '65758e9ddd9cf87ad9a9e89f7c543b661eb1a5e61b2a55c5cccc69643b2e4eb6'
    checksumType   = 'sha256'
    checksum64     = '44b76b17d9f18cceaa30309d5e636fdd547ac7725f9a6700ac2e54c81d6ac92a'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
