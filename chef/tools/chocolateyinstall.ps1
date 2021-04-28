$version = '16.13.16'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '9474e100536940e33c698724bede612b9535833cdac394543424f83e64122ad9'
    checksumType   = 'sha256'
    checksum64     = '215b6a4dd01f52af7a06e8e591e830c890cceb1a428d3d07e09ec833e73fe75a'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
