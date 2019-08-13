$version = '4.11.3'

$packageArgs = @{
    packageName    = 'inspec'
    unzipLocation  = $toolsDir
    fileType       = 'msi'
    url64bit       = "https://packages.chef.io/files/stable/inspec/$version/windows/2016/inspec-$version-1-x64.msi"
    checksum64     = '777c386d8773d31b457d9b6b419fe951fae030f0d13d896532623a58cd58bf9d'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
