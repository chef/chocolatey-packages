$version = '16.1.6'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '68d7b0020bdc90c4af52cacd82c7e219f93898e54078ef78505a036112fe3e5c'
    checksumType   = 'sha256'
    checksum64     = '19be54232bbf7503af9c236944b2fd6d72089be370f30e74eed7f6e1ef396cd4'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
