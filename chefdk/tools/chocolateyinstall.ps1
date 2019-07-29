$version = '4.2.0'
$url = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x64.msi"
     
$packageArgs = @{
    packageName    = 'chefdk'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url            = $url
    url64bit       = $url64
    checksum       = '93c599ba2fdcf3e0e307e08c5ca42a21ef58706a28310d2dd8a1d40fea769414'
    checksumType   = 'sha256'
    checksum64     = 'ec5103bd69b2279e9fbe24af97459d8ce4b94cfcb3d0f9f41c7d7615a49ceb89'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
