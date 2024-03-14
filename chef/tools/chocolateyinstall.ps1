$version = '18.4.12'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = '939a12b17733741799778485463aaae690a4d2512cc2c9f78b812e010640675b'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
