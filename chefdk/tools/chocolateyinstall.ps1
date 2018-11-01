$version = '3.4.38'
$url = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName   = 'chefdk'
    unzipLocation = $toolsDir
    fileType      = 'MSI'
    url           = $url
    url64bit      = $url64
    checksum      = 'f21504310024b0ac31802065c3e9fa45fe0f60f66518375c9890aa11f5f609cc'
    checksumType  = 'sha256'
    checksum64    = 'cd8c1d306b3a0e7f5f75328b8d9b0643f12c2492352c2e911dc247bce66c77d9'
    checksumType64= 'sha256'
    silentArgs    = "/qn /quiet /norestart"
    validExitCodes= @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
