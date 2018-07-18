$packageArgs = @{
  packageName = 'chef-client'
  fileType = 'msi'
  url = 'https://packages.chef.io/files/stable/chef/14.3.37/windows/2016/chef-client-14.3.37-1-x86.msi'
  url64 = 'https://packages.chef.io/files/stable/chef/14.3.37/windows/2016/chef-client-14.3.37-1-x64.msi'
  silentArgs = '/quiet'
  validExitCodes = @(0)
  checksum = '1ee555c4cd61aa3ef1d58b86e5a20458cd56b51f29881910968a17b042200d26'
  checksumType = 'sha256'
  checksum64 = 'f5ef8c31898592824751ec2252fe317c0f667db25ac40452710c8ccf35a1b28d'
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
