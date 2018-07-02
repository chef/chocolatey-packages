$version = '3.0.36'
$url = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName   = 'chefdk'
    unzipLocation = $toolsDir
    fileType      = 'MSI'
    url           = $url
    url64bit      = $url64
    checksum      = '558f1aa996f5fe0fd65c0c7b7dd6c40c324e0e72fd053c96cb2dd343647904fe'
    checksumType  = 'sha256'
    checksum64    = 'f8347d422c7c4db53b4ef056b790f040a578bf27e772f8448077c2905dcdbdbe'
    checksumType64= 'sha256'
    silentArgs    = "/qn /quiet /norestart"
    validExitCodes= @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
