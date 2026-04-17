$version = '18.9.4'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2016/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = '3B0CD05604A85BD57E760555DF205BA82BF44A67D147BD6B00573374C61C5CB7'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
