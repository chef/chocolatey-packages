$version = '16.8.14'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '97a8aed017e2fe3529cf3606e07f9d1c50387856467820be0614ca97c4e3e1e3'
    checksumType   = 'sha256'
    checksum64     = '556b8152e3cafa27b347bed6b19416cd14e7ee2d926cec70debd0f455f8755fa'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs