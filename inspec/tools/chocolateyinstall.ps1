$version = '4.24.8'

$packageArgs = @{
    packageName    = 'inspec'
    unzipLocation  = $toolsDir
    fileType       = 'msi'
    url64bit       = "https://packages.chef.io/files/stable/inspec/$version/windows/2016/inspec-$version-1-x64.msi"
    checksum64     = '2a4648ec4a157e2979a43f63a4c591a49a277424ee0686eb47439bd81aa3ab25'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
