$packageArgs = @{
  packageName = 'chef-client'
  fileType = 'msi'
  url = 'https://packages.chef.io/files/stable/chef/14.2.0/windows/2016/chef-client-14.2.0-1-x86.msi'
  url64 = 'https://packages.chef.io/files/stable/chef/14.2.0/windows/2016/chef-client-14.2.0-1-x64.msi'
  silentArgs = '/quiet'
  validExitCodes = @(0)
  checksum = '881933ef41d879946efb080459b87b1f1f6bec86eae895e7f229d4778f398b7d'
  checksumType = 'sha256'
  checksum64 = '8744c716386b82f792f41ba286431e88afeb3efd68ee46cd46516b1d6930722c'
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
