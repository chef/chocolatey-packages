$version = '16.18.30'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = '688647188d8aeb610a56c2ca4e2aa3903cb12ff8b12bf6cfbf324e52b5cba6d8'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
