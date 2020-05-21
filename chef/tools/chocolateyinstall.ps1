$version = '16.1.0'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '48f52a1bf4cd75f0ebcc1035efe71f845734bdf9038c1e717be6e9c6e60f82e7'
    checksumType   = 'sha256'
    checksum64     = '1ddbf313f81c345f98cacecc08347ced8ab477d4786217b84a2ae6011b7de6c5'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
