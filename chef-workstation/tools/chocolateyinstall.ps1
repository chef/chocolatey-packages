$version = '0.1.162'
$url64 = "https://packages.chef.io/files/stable/chef-workstation/$version/windows/2016/chef-workstation-$version-1-x64.msi"

$packageArgs = @{
    packageName   = 'chef-workstation'
    unzipLocation = $toolsDir
    fileType      = 'MSI'
    url64bit      = $url64
    checksum64    = 'bd3aca707c9f66e5f810d44c61f67033e58e553a3d88e6619bfd708b19eccd20'
    checksumType64= 'sha256'
    silentArgs    = "/qn /quiet /norestart"
    validExitCodes= @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
