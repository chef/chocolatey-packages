$version = '18.4.12'

$packageArgs = @{
    packageName    = 'chef-client'
    fileType       = 'msi'
    url64          = "https://packages.chef.io/files/stable/chef/$version/windows/2012r2/chef-client-$version-1-x64.msi"
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    checksum64     = 'e9261944c6fd8ed7218d1909d280ae183d1afb87ce76b9ad033453b34b65fb52'
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
