$version = ' 17.5.22'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = 'c40cc7edfb94ba8a80eaca54b5ac8af7c15412c25b3e09d0ce0159c0d9626b16'
    checksumType   = 'sha256'
    checksum64     = '6f93812c04bb39b3b49d662cb217a696fb12c4452173576ca6d4db8c3b7d55a6'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
