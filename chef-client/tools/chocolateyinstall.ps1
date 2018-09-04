$packageArgs = @{
  packageName = 'chef-client'
  fileType = 'msi'
  url = 'https://packages.chef.io/files/stable/chef/14.4.56/windows/2016/chef-client-14.4.56-1-x86.msi'
  url64 = 'https://packages.chef.io/files/stable/chef/14.4.56/windows/2016/chef-client-14.4.56-1-x64.msi'
  silentArgs = '/quiet'
  validExitCodes = @(0)
  checksum = '68eef14518e0dcdc7c5eae8c26f4a4141b94183f55157d4962553f4c3b67bfb3'
  checksumType = 'sha256'
  checksum64 = '1d6c200142359c27d799477e9ef546a455df0fb04a30676142117ddf9cc38bb4'
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
