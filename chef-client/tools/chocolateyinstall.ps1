$version = '14.10.9'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = 'f1daaf3d0bb8c6c7bbb54e201febcc4269f06565dfbecf64c375acff0dca01ed'
    checksumType   = 'sha256'
    checksum64     = 'e975ed135bd56c54019ed0115bface82c3cf7c0067a7e81c64cfc42db5e40561'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
