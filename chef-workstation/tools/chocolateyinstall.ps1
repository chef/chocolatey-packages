$version = '0.17.5'
$url64 = "https://packages.chef.io/files/stable/chef-workstation/$version/windows/2016/chef-workstation-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'chef-workstation'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url64bit       = $url64
    checksum64     = 'cb59b4721c176a64c211bc3a0f5accfdd06bd6d26b816d0406b2c82464ab4555'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
