$version = '16.9.32'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '3681244e80b5981c8a5a8bd0c3c52f9676dd36101e099404b9cebc04ba59f75d'
    checksumType   = 'sha256'
    checksum64     = '45596761327eb2e0c6d300522bbf21335e00c7070b7000d2161667da800195be'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
