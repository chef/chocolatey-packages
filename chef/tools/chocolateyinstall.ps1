$version = '17.4.38'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '4affd4c0abde531072f3b2b98e8ba1e5da47a17e8cefb38ede20d9de58943648'
    checksumType   = 'sha256'
    checksum64     = '0cec4e8929ec6b789922a855154e0ac5e01ce170a4ac336b302bc0a866a434af'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
