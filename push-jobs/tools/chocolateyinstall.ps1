$version = '2.5.0'
$url = "https://packages.chef.io/files/stable/push-jobs-client/$version/windows/2012r2/push-jobs-client-$version-1-x86.msi"
$url64 = "https://packages.chef.io/files/stable/push-jobs-client/$version/windows/2012r2/push-jobs-client-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'push-jobs'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url            = $url
    url64bit       = $url64
    checksum       = 'fc44629384ca30c0fd7e2d1ab47183459b6f0a5759bbf65a8ca3a91ec7449211'
    checksumType   = 'sha256'
    checksum64     = 'd56911d754699e6c236cdac5c3f93da6e58141dbe0449302e59cd183259a1a4d'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
