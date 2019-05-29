$version = '4.0.60'
$url = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/stable/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'chefdk'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url            = $url
    url64bit       = $url64
    checksum       = '09a423bbf690af7abaa08d5a1dddd38bc399316e8506e6734e1e91a8d959677c'
    checksumType   = 'sha256'
    checksum64     = '80d3a65ad9b681b7125b8aed3696a222a782ccceac8284097ba6366c4ef978ab'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
