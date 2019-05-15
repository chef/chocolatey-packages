$version = '3.9.3'
$url = "https://packages.chef.io/stable/windows/2012/inspec-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'inspec'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url64bit       = $url
    checksum64     = '391e8d62436820f07a9ac89d4ab163703a3541f1d33ff8b76d18aea35d3d3b7c'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
