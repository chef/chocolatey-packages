$version = '15.7.32'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = 'e0fefdd95cc8950f6fb2e186f6011541af0f9bc8a2de0310a045ff0299bf3411'
    checksumType   = 'sha256'
    checksum64     = 'b4bf68b6f9e55115b66d2a666f2e8d026ead8792ef935ec58e48cb56c3924b67'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
