$version = '3.3.23'
$url = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName   = 'chefdk'
    unzipLocation = $toolsDir
    fileType      = 'MSI'
    url           = $url
    url64bit      = $url64
    checksum      = 'f6b0f599ed09b21a1e4888831345a17fc174fd9ce1c61bd68ac8d11d9fc4a2d1'
    checksumType  = 'sha256'
    checksum64    = 'a47042cfdb792d7e87ff5c7a61e24aedd56f21b80bf93bd64371b933bb069638'
    checksumType64= 'sha256'
    silentArgs    = "/qn /quiet /norestart"
    validExitCodes= @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
