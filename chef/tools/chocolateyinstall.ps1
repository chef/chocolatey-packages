$version = '16.16.13'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '2c0b1fe57ec4506e4c2c595ce604a2a74f407db15102d795029a478fbebdd2b0'
    checksumType   = 'sha256'
    checksum64     = 'f5385f259045d436641a344a42f6dcaa5b07e61265ff3979812b6cefc2a5a46a'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
