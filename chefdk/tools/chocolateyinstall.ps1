$version = '4.10.0'
$url = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'chefdk'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url            = $url
    url64bit       = $url64
    checksum       = '0b021c6b53689e9db997022308b57f46660ac3d0070148a17d3660f496284140'
    checksumType   = 'sha256'
    checksum64     = '03dd82c50c6425e3cdc55ada277676ec982203623d4f5d7a6e7227527fdb81bc'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
