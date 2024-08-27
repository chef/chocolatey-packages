$version = '17.10.163'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = '64D696934F92C55D1045FC85DBA4456232FBFE13FC84F9929F536E89BEA707B2'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
