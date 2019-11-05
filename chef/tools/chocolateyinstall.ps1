$version = '15.4.45'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = '7f334ee6184fea49beb2cef479ef06311953e01942da4baf27f9707dfae5a06a'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
