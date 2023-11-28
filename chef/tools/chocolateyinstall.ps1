$version = '17.10.95'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = 'f1e05ca3df288dac185cdf4ae5aa36ee8bbb6b54d772eac2feed99c9d6518ec4'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
