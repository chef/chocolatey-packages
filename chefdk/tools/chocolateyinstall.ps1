$version = '4.11.0'
$url = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'chefdk'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url            = $url
    url64bit       = $url64
    checksum       = '267a289fe17f3bffeebf641250567a5a70574108372a74b1edc63cbb79485a7f'
    checksumType   = 'sha256'
    checksum64     = 'bd4c6ccb692a50248e7e97a763593017f7defbd3fdafa6e7380650f08e2d9914'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
