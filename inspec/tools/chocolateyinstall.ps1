$version = '4.18.104'

$packageArgs = @{
    packageName    = 'inspec'
    unzipLocation  = $toolsDir
    fileType       = 'msi'
    url64bit       = "https://packages.chef.io/files/stable/inspec/$version/windows/2016/inspec-$version-1-x64.msi"
    checksum64     = '753093ac1f16c01fe4e9470fdc7083d2225877d2c445561f12405483a9368632'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
