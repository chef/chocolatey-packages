$version = '4.3.13'
$url = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'chefdk'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url            = $url
    url64bit       = $url64
    checksum       = '22f4f6bb3c6f44a78046e981cbfc5844cbd003adf692850b83ce969b188f58e7'
    checksumType   = 'sha256'
    checksum64     = '941b01e4abace3f22becb4a5d12ae0cfcdc984110a42d7546423c9be716f9fe7'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
