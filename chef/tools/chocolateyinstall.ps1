$version = '17.2.29'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '4bcb7c56d10e19e7d88fa1258cc55eb37b690aaaf7edc3b6ccc92b472b8c078a'
    checksumType   = 'sha256'
    checksum64     = 'ee028f6e776a8c0df80e5614bfbab2d1ac75455c5b73566db5e200c4f05f672d'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
