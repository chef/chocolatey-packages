$version = '15.5.17'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '3b1aea92f6596e75e2b244dfdf88d5045ef20ff326a86667025c81057c8a67f6'
    checksumType   = 'sha256'
    checksum64     = 'e728a43fcadcc0fa7979c879ad6aa692a53492d93e8cc0c6752d6d0bd030a7fd'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
