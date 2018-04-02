$version = '2.5.3'
$url = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName   = 'chefdk'
    unzipLocation = $toolsDir
    fileType      = 'MSI'
    url           = $url
    url64bit      = $url64
    checksum      = '656fd16842972ccb3b76560dd952aa2fd3c430be85dd5a01f2e17f3cc3002635'
    checksumType  = 'sha256'
    checksum64    = '86d8b8408e317298e04a8a96ac45be7b4885973780280239d6abdc31081adf09'
    checksumType64= 'sha256'
    silentArgs    = "/qn /quiet /norestart"
    validExitCodes= @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
