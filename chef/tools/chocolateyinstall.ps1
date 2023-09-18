$version = '18.3.0'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = 'A7505B392CE5888A885F5949FAB7A4A6278825370CCBB8313B0CD03821EAF5A3'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
