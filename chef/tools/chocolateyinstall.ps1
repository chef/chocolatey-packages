$version = '16.18.30'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = 'd584e40da66acd72091199ac57326e4dc36dc66a8f79ad5668bf9c20a52ecb90'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
