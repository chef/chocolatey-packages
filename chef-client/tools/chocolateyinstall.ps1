$version = '15.0.293'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = 'c22b5759fb16415c283ac4ec50e3b33f9ced0e7ebb941d8e4d2b71a4a3addef6'
    checksumType   = 'sha256'
    checksum64     = 'e66a0b6aa855538edca50cce89a21a80a6e52e78f5cf15b944ef6e131c1f561b'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
