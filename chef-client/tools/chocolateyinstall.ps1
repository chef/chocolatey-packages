$version = '14.11.21'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '8147c97cd3e551f3a5b9879cc86693db4382b8c9ee4eb9e48ecb534667611120'
    checksumType   = 'sha256'
    checksum64     = 'a7519c4e4450ab7cd7ea545283a13c30ed0a12a140260beef4ce8d9a86883077'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
