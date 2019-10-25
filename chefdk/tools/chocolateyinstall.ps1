$version = '4.5.0'
$url = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'chefdk'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url            = $url
    url64bit       = $url64
    checksum       = 'c4297c4a36575bbedf0489b4fb1755fa174552fa883eaae57fb30b45af4b21d0'
    checksumType   = 'sha256'
    checksum64     = '32db073a94097c808be596106a93141c8c97b0b1c1efb033072acdcbbf67fe4b'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
