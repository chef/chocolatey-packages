$packageArgs = @{
  packageName = 'chef-client'
  fileType = 'msi'
  url = 'https://packages.chef.io/files/stable/chef/14.1.12/windows/2016/chef-client-14.1.12-1-x86.msi'
  url64 = 'https://packages.chef.io/files/stable/chef/14.1.12/windows/2016/chef-client-14.1.12-1-x64.msi'
  silentArgs = '/quiet'
  validExitCodes = @(0)
  checksum = 'ca13b57fadf78cf4e714ce283f1cfbbcae6c2d1c022b7f252dbc468f70b07621'
  checksumType = 'sha256'
  checksum64 = 'c546582d0cd9e23d06000bea566d380605e374e1facf4553791a5488ed2880e6'
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
