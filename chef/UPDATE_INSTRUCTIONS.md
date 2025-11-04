# Chef Infra Client Chocolatey Package - Update Instructions

This document provides instructions for updating and publishing the Chef Infra Client Chocolatey package.

## Prerequisites

- Chocolatey installed (`choco` command available)
- API key for Chocolatey.org (get it from https://community.chocolatey.org/account)
- PowerShell 5.1 or later

## Update Process

### Step 1: Update to New Version

Run the update script with the desired version:

```powershell
cd c:\projects\chocolatey-packages\chef
.\update.ps1 -Version "X.Y.Z"
```

For example, to update to version 18.7.10:

```powershell
.\update.ps1 -Version "18.7.10"
```

This script will:
- Download the Chef Infra Client MSI from the official repository
- Calculate the SHA256 checksum
- Update `tools\chocolateyinstall.ps1` with the new version and checksum
- Update `chef.nuspec` with the new version

### Step 2: Test the Update

Run the test script to validate the changes:

```powershell
.\test.ps1
```

This will verify that:
- The version is correctly updated in both files
- The checksum matches the expected value
- All package configuration is preserved
- The download URL is correctly formatted

### Step 3: Review Changes

Review the changes using git:

```powershell
git diff
```

Verify that only the version and checksum have changed.

## Packing the Package

Navigate to the parent directory and pack the nuspec file:

```powershell
cd c:\projects\chocolatey-packages
choco pack .\chef\chef.nuspec
```

This will generate a `.nupkg` file in the current directory.

### Important: Check the Filename

The generated file should look like: `chef-client.X.Y.Z.nupkg`

**⚠️ Warning:** If the filename contains a colon (e.g., `chef-client:X.Y.Z.nupkg`), you must rename it to use a period instead. The `choco push` command will fail with colons in the filename.

```powershell
# If needed, rename the file:
Rename-Item "chef-client:X.Y.Z.nupkg" "chef-client.X.Y.Z.nupkg"
```

## Publishing the Package

### Method 1: Using API Key Parameter (Recommended)

```powershell
choco push .\chef-client.X.Y.Z.nupkg --api-key '<your-api-key-here>' --source=https://push.chocolatey.org/
```

Replace:
- `X.Y.Z` with the actual version number
- `<your-api-key-here>` with your actual Chocolatey API key

**Example:**

```powershell
choco push .\chef-client.18.7.10.nupkg --api-key 'abc123-your-key-xyz789' --source=https://push.chocolatey.org/
```

### Method 2: Using Cached API Key

If you've already set your API key with `choco apikey`, you can use:

```powershell
choco push .\chef-client.X.Y.Z.nupkg --source=https://push.chocolatey.org/
```

## Troubleshooting

### Push Command Fails

If the basic push command fails:

```powershell
choco push .\chef-client.X.Y.Z.nupkg --key API_KEY_HERE
```

Try the full command with explicit parameters:

```powershell
choco push .\chef-client.X.Y.Z.nupkg --api-key '<your-key>' --source=https://push.chocolatey.org/
```

### Colon in Filename Error

If you see an error about the filename format, check for colons:

```powershell
# Check the filename
Get-ChildItem chef-client*.nupkg

# Rename if necessary
Rename-Item "chef-client:X.Y.Z.nupkg" "chef-client.X.Y.Z.nupkg"
```

### Download Fails During Update

If the update script fails to download the MSI, verify:
- The version exists on the Chef downloads page
- You have internet connectivity
- The URL format is correct

Check available versions at: https://downloads.chef.io/products/chef

## Complete Example Workflow

```powershell
# 1. Navigate to the chef package directory
cd c:\projects\chocolatey-packages\chef

# 2. Update to new version
.\update.ps1 -Version "18.7.10"

# 3. Test the update
.\test.ps1

# 4. Review changes
git diff

# 5. Commit changes (if using git)
git add chef.nuspec tools\chocolateyinstall.ps1
git commit -m "Update Chef Infra Client to 18.7.10"

# 6. Pack the package
cd ..
choco pack .\chef\chef.nuspec

# 7. Verify the package filename
Get-ChildItem chef-client*.nupkg

# 8. Push to Chocolatey.org
choco push .\chef-client.18.7.10.nupkg --api-key '<your-api-key>' --source=https://push.chocolatey.org/
```

## Additional Resources

- [Chocolatey Package Creation Guide](https://docs.chocolatey.org/en-us/create/create-packages)
- [Chef Infra Client Downloads](https://downloads.chef.io/products/chef)
- [Chocolatey.org Account](https://community.chocolatey.org/account)
