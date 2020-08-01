$version = '16.3.45'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = 'e5388da8df7f66c5e12960c7598ade0d64756f22f7160ae661c66b51c657ca52'
    checksumType   = 'sha256'
    checksum64     = 'e50272e4e9959210fe5698f1e134f5c612d7ed000c0400dd2b440e1e8bb8c0bb'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs