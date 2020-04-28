$version = '4.18.108'

$packageArgs = @{
    packageName    = 'inspec'
    unzipLocation  = $toolsDir
    fileType       = 'msi'
    url64bit       = "https://packages.chef.io/files/stable/inspec/$version/windows/2016/inspec-$version-1-x64.msi"
    checksum64     = '936c6bc5245194295d846d8df18210fc887a36ff92c24c9bba2dae07968c30d7'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
