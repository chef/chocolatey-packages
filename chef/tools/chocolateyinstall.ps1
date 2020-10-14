$version = '16.6.14'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '5c15ddd95586d281ac8c7e75a4110409e765c95372351b4bc212b968010fb8f7'
    checksumType   = 'sha256'
    checksum64     = 'd099fa7b983d0b47f230830d52aca39ba8ad3ec8e87129867f1e23a79eb5da5f'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs