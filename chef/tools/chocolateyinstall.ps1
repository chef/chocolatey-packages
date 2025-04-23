$version = '18.7.6'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = 'e6e62795451d7e7889c375f9036c9c33eeacc4d4fb7d32ae0feda681cd0373ab'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
