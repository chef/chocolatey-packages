$version = '17.4.25'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '9a5165ff0bc12bb0da657cf98e28c4c176400f722f207f8d8dd99a5135538d5a'
    checksumType   = 'sha256'
    checksum64     = '0cfece98e826a708bc60d65c2b1dea5bfcccea938f948deb5099a16c862fd7a9'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
