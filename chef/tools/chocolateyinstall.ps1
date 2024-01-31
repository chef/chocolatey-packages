$version = '17.10.114'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = '3B296F6F795B7563DFE13A99286C4F1D55D0825F8DE481E4D4FC442B463DC812'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
