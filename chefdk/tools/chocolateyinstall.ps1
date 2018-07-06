$version = '3.1.0'
$url = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName   = 'chefdk'
    unzipLocation = $toolsDir
    fileType      = 'MSI'
    url           = $url
    url64bit      = $url64
    checksum      = 'fc44629384ca30c0fd7e2d1ab47183459b6f0a5759bbf65a8ca3a91ec7449211'
    checksumType  = 'sha256'
    checksum64    = '4bc54940521d7c6d6e790b8d1aed95cfbaadef7daeda3a0686f95330cefcc409'
    checksumType64= 'sha256'
    silentArgs    = "/qn /quiet /norestart"
    validExitCodes= @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
