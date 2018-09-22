$version = '3.2.30'
$url = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName   = 'chefdk'
    unzipLocation = $toolsDir
    fileType      = 'MSI'
    url           = $url
    url64bit      = $url64
    checksum      = '5f216440983d9126e99ab1f327825513d9d3f12d016f3f01deb571010e59019a'
    checksumType  = 'sha256'
    checksum64    = '6d31cbcf748136698ac263842762b9c9f6f46e04830ab1a6ac99505c1dd80659'
    checksumType64= 'sha256'
    silentArgs    = "/qn /quiet /norestart"
    validExitCodes= @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
