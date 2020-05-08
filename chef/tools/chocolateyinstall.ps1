$version = '16.0.287'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = 'f0a7fcbdbdb3b32a3c51d6e74176d6d704844029acac4a5a919b675790497e7c'
    checksumType   = 'sha256'
    checksum64     = 'a38221da8dab31bc6ee1eaec2fe6c122cf7a8a98c3b2b552a6131e7b40515f99'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
