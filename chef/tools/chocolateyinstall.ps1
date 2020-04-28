$version = '15.10.12'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '0f56bcd8afb753e02bc77619b4b552f01ce5991566a8ca727bd06bd7e4992b80'
    checksumType   = 'sha256'
    checksum64     = '3173a73a6fe1073868bb258cf66b2a5ca78f94974f04bd581fe6ea8b32acaccf'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
