$version = '16.5.57'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = 'b6d559ca63536ca8ca5a8a615ee486eeab7ab472ea6963241fe3269419f621d9'
    checksumType   = 'sha256'
    checksum64     = '5d7622cf586885ac1ab6f416d8f09424472dd9b9231f58655b5d110670c77e64'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs