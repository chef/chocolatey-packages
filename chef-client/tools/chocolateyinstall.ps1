$version = '15.1.36'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '01e2db5f5fd1724b7716192b6bac8c5aa818a5574c31fb952f9aca86fecff748'
    checksumType   = 'sha256'
    checksum64     = '78dcad0f6521495a742f6ce24b593b51d0a97b899c84148a7ee92885feccfecb'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
