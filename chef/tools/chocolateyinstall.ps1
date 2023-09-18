$version = '18.2.7'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = '6AADC330F31093871C9A5D8EF09C3D64BBB867B9E1C8EB6B7F3601E5F888B323'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
