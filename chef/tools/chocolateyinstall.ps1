$version = '15.11.8'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = 'f9149d2aa049cf0788ae126a87d85b9d61942aa3ca260e9f7010969b2fba6210'
    checksumType   = 'sha256'
    checksum64     = 'dfe2407d30517c8ca969ded96270564315d9f7c78a3f4aff7b061a7505d425e8'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
