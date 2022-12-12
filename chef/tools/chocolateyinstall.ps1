$version = '18.0.185'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = '189525427A7A309B7FD37DAC52E43D0B892178EBE60F880C146E7A6D0D946B5B'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
