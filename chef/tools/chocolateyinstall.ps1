$version = '18.7.10'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = '273C758F08E3323497D0ABC5A339E985F7D6D3516EBD7D7276F1B1663BD7C877'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
