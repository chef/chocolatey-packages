$version = '0.8.7'
$url64 = "https://packages.chef.io/files/stable/chef-workstation/$version/windows/2016/chef-workstation-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'chef-workstation'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url64bit       = $url64
    checksum64     = '578623d3507cb54658103e71c53f525489669524d87ffec913805245feb6fa1a'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
