$version = '0.2.29'
$url64 = "https://packages.chef.io/files/stable/chef-workstation/$version/windows/2016/chef-workstation-$version-1-x64.msi"

$packageArgs = @{
    packageName   = 'chef-workstation'
    unzipLocation = $toolsDir
    fileType      = 'MSI'
    url64bit      = $url64
    checksum64    = 'a72e453d8caa9c3284b3c308bbbab09527142f805ff9533b7cbbea13aaf170a4'
    checksumType64= 'sha256'
    silentArgs    = "/qn /quiet /norestart"
    validExitCodes= @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
