$packageArgs = @{
  packageName = 'chef-client'
  fileType = 'msi'
  url = 'https://packages.chef.io/files/stable/chef/14.6.47/windows/2016/chef-client-14.6.47-1-x86.msi'
  url64 = 'https://packages.chef.io/files/stable/chef/14.6.47/windows/2016/chef-client-14.6.47-1-x64.msi'
  silentArgs = '/quiet'
  validExitCodes = @(0)
  checksum = '1690d453c4e94742f18c47140c160a69609da34bca681fca6bc690649ffcf326'
  checksumType = 'sha256'
  checksum64 = '5d20a33973472d64c40ff4642a94702c2c2205174f8178123199f40931d8d774'
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
