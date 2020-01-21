$version = '15.6.10'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '551171d2f83b8926d62f173098914de81291fff8bf7ab61336e4cff0bcb5baaf'
    checksumType   = 'sha256'
    checksum64     = '5553cea94fc5c374403751324619802509b906ef8e2b92a36a5fc71b35dbb1e2'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
