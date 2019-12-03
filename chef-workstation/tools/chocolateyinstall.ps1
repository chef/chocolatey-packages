$version = '0.12.20'
$url64 = "https://packages.chef.io/files/stable/chef-workstation/$version/windows/2016/chef-workstation-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'chef-workstation'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url64bit       = $url64
    checksum64     = '093ab3a06f235863af2381f7ca1b3b07d8518ef701352b6d497391a6f1e2f6e4'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
