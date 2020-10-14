$version = '16.4.41'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url            = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x86.msi"
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum       = '08faab445bb868393be551e326757cac35a3a61202e814c84403ae55f7437d0a'
    checksumType   = 'sha256'
    checksum64     = '38f74615658a24cee4879a1004a7d1a56f9248a6821ef90e4f693a24d903b25d'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs