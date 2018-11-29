$version = '3.5.13'
$url = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName   = 'chefdk'
    unzipLocation = $toolsDir
    fileType      = 'MSI'
    url           = $url
    url64bit      = $url64
    checksum      = 'f02d756e04958ea050008432e03f26fae3c363e597e51391b15931254e2eee8e'
    checksumType  = 'sha256'
    checksum64    = '8007bf40f06e11ce0957176e63d834f19d4f498768ea90ab8053ec659c2ed748'
    checksumType64= 'sha256'
    silentArgs    = "/qn /quiet /norestart"
    validExitCodes= @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
