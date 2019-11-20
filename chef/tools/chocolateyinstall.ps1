$version = '15.5.15'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = 'a4aa896c137277ae6e3f790573d3570c5a0fa971a986c80e3610ec1f56e3e12a'
    checksumType   = 'sha256'
    checksum64     = '4040ab14488ace30f75d4f553b6897255dff874d192e151de5564659bf9888df'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
