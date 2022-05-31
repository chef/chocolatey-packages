$version = '17.10.3'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '52d0c3da70542502e61d155c62b39f78dead6862522d33b780a24dc426eb7f9c'
    checksumType   = 'sha256'
    checksum64     = 'fdac8efe4e1824a8871c2f068f34e7fb53f508e14b37214c3abfba63239cd26f'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
