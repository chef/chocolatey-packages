$version = '15.8.23'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '7933199932ff103450374112638e947b1f9f12cc697de244bc8b0ed6b42f2257'
    checksumType   = 'sha256'
    checksum64     = '885c5d139c781ee1a347fe5905d9133bc6e061e5cb49be3c744315c05bb57185'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
