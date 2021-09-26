$version = '17.3.48'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '1fe8f6855d06b94e75432e9fed9704312e8f091ec2fb884bfc729fddcd00e6e2'
    checksumType   = 'sha256'
    checksum64     = '8d551fcc278326f03487e156278aaba17a5db14ed87e0f4d8664b41c0f8c902a'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
