$version = '18.8.54'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = 'EC194B241F401AB20165771571FFF1590E4D334A157F1A496A505C74DF3214F8'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
