$version = '4.8.23'
$url = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x86.msi"
$url64 = "https://packages.chef.io/files/stable/chefdk/$version/windows/2012r2/chefdk-$version-1-x64.msi"

$packageArgs = @{
    packageName    = 'chefdk'
    unzipLocation  = $toolsDir
    fileType       = 'MSI'
    url            = $url
    url64bit       = $url64
    checksum       = '2034e7144d97c70f8739ab936bcf2e780c2a31b815d0e502c6a80e6ae11eef5f'
    checksumType   = 'sha256'
    checksum64     = 'bd092de8f1c42f797fa20813c9a8b5ede7886386d4aefb6fe5403cb173b3b598'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /quiet /norestart"
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
