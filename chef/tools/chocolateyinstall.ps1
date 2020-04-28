$version = '16.0.257'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '71c6c4fa4dce7b4c905ae1b853d79d4dd39c72ae7cb9b09a61fb2dd196c405c7'
    checksumType   = 'sha256'
    checksum64     = '7be69163ac793ac31e4f4a447164fb90790599617ee5ad4cc6e3aa3fbb46da7f'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
