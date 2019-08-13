$version = '15.2.20'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = 'aea6f3765bf42398685481c839a12e5eade8517e839732c430a95fb3b838f15d'
    checksumType   = 'sha256'
    checksum64     = '9301f44ef5baa5392f3de05ef5239e56101f80d5767c7a681c01c68f1275062f'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
