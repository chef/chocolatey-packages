$version = '18.1.0'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = 'C2B8D8833D7D90838C56D258F9A33B2E1B0D71C90FC2B54DD5CD3E7A34C8868C'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
