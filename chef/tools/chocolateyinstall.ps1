$version = '17.0.242'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = 'a6c9df6e239d5edddbbb279aef45a78b39265ea58ccb1949c72d1ff6d93aa4d4'
    checksumType   = 'sha256'
    checksum64     = 'e9f67a152b05ca64c70843fc91874e0c9bbde48488c01ea760c5eae7c7e65871'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
