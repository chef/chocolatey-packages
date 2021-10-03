$version = '4.46.13'

$packageArgs = @{
    packageName    = 'inspec'
    unzipLocation  = $toolsDir
    fileType       = 'msi'
    url64bit       = "https://packages.chef.io/files/stable/inspec/$version/windows/2016/inspec-$version-1-x64.msi"
    checksum64     = '51c3e4e0424653f9da3f081d776810ec534e62b764dd3ab916a3a7b26d9d28b9'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
