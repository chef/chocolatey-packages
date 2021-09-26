$version = '17.1.35'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '4544b8b9af64259379cd5c67581a82dbef83f44c46072d358df76a87cd606419'
    checksumType   = 'sha256'
    checksum64     = 'afaa51e1dff887930962492ffc921c0df28b3c020aab1f8f2730ba23429297b6'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
