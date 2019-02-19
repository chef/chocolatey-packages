$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = 'https://packages.chef.io/files/stable/chef/14.7.17/windows/2016/chef-client-14.7.17-1-x86.msi'
    url64          = 'https://packages.chef.io/files/stable/chef/14.7.17/windows/2016/chef-client-14.7.17-1-x64.msi'
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = 'fb114dea5f5451bd7e24c2930ec8913271fe90da401ffcddded4d33f6615c0de'
    checksumType   = 'sha256'
    checksum64     = '17e570f1bce16d3bb090addbbfdb97fb78fe6d96da88ff20c456c5e2567828d4'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
