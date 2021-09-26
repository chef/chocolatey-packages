$version = '21.9.613'
$url64 = "https://packages.chef.io/files/stable/chef-workstation/$version/windows/2016/chef-workstation-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'chef-workstation'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url64bit       = $url64
    checksum64     = '325456fff7db6db34c00d5d679e885aa04cef8adf4db2ebfb0c20037e492e590'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
