$version = '2.5.6'
$url = "https://packages.chef.io/files/stable/push-jobs-client/$version/windows/2012r2/push-jobs-client-$version-1-x86.msi"
$url64 = "https://packages.chef.io/files/stable/push-jobs-client/$version/windows/2012r2/push-jobs-client-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'push-jobs'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url            = $url
    url64bit       = $url64
    checksum       = 'fecbb447dc89548e3a55b388d29362a4721a0c05a447ca0c902b1bd3bb2787a7'
    checksumType   = 'sha256'
    checksum64     = '6f4de28ee016b72a3ecfb8faf21d5031162afe5281fc7a9f736314f3e0279fe2'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
