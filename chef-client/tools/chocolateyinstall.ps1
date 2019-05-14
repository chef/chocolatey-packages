$version = '14.12.9'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '3256d50eff7bf5b338afddfc058bd66c45b3dacc3671d88d193ffb2fe123c440'
    checksumType   = 'sha256'
    checksum64     = 'aabe41b6cff1b7fad88a8eb62c8892fa2349db477e7de8f67632acefa13a6d1b'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
