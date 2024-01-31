$version = '18.4.2'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = 'F676683A4DC9CA17D142710964D773FE62E59307E6F19D2D65CB92DD51C86542'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
