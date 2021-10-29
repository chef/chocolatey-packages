$version = '17.6.18'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = 'd3593fb02e09f189bf1938ebb642078255b6815a0440f66288786e4f51cb5bd4'
    checksumType   = 'sha256'
    checksum64     = 'ab425926382528b62dd4745c2914b02df475640dac90ed1f10965ceb600673fc'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
