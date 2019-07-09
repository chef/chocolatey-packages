$version = '4.1.7'
$url = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'chefdk'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url            = $url
    url64bit       = $url64
    checksum       = 'de4cd400b534d9e6888278de1473b31b39aadb58593bed8b6edcbf4beecf2876'
    checksumType   = 'sha256'
    checksum64     = '5af726b6ffe0d6da0e66f327268d73e62d4bacd8f468e45caffad0bad160ac58'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
