$version = '4.6.35'
$url = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'chefdk'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url            = $url
    url64bit       = $url64
    checksum       = 'd63e7236dc0f29592276921b1b0386df4b44dd2e23242cd1f19d25793c0eb1a7'
    checksumType   = 'sha256'
    checksum64     = '27884d9c9805c2a064828c2eb451366b957c08c4ad7cb4fd4de672a1e8355b02'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
