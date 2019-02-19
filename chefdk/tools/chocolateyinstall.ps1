$version = '3.7.23'
$url = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'chefdk'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url            = $url
    url64bit       = $url64
    checksum       = '0e30e75add1fd980e202866b18657e9391a70f52e665382487df8450752d5249'
    checksumType   = 'sha256'
    checksum64     = '391e8d62436820f07a9ac89d4ab163703a3541f1d33ff8b76d18aea35d3d3b7c'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
