$packageArgs = @{
  packageName = 'chef-client'
  fileType = 'msi'
  url = 'https://packages.chef.io/files/stable/chef/14.5.27/windows/2016/chef-client-14.5.27-1-x86.msi'
  url64 = 'https://packages.chef.io/files/stable/chef/14.5.27/windows/2016/chef-client-14.5.27-1-x64.msi'
  silentArgs = '/quiet'
  validExitCodes = @(0)
  checksum = '915a954aaadbc760e41f6b0f63fa2409cd4b64f87db18340fdc7f80a8b0a62fa'
  checksumType = 'sha256'
  checksum64 = '2e8adb02e41034776ba6da0ee186b07aa66b83d93d13b0322dd11158418f32a5'
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
