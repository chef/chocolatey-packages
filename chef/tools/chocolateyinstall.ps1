$version = '16.10.17'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '163a74a96626bc745e42a61e8965093ecf2ac4aed4c2684ce410fc19825eb6d9'
    checksumType   = 'sha256'
    checksum64     = 'b9f56f99c674b137e2f4b87aae3068cf17904423640fb2798bfa286cb3ec6862'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
