$version = '15.0.300'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '279f3cfa40e3455d488e1085d93464a7046e6ea3dc258d12bb206d8fbfc6eb0d'
    checksumType   = 'sha256'
    checksum64     = 'eb84a65bd50474c2e864b676cb5c91a5336d8bddf77eec944ce6db7f8e2c1f7e'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
