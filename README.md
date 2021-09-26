# chocolatey-packages

**Umbrella Project**: [Chef Foundation](https://github.com/chef/chef-oss-practices/blob/main/projects/chef-foundation.md)

**Project State**: [Active](https://github.com/chef/chef-oss-practices/blob/main/repo-management/repo-states.md#active)

**Issues [Response Time Maximum](https://github.com/chef/chef-oss-practices/blob/main/repo-management/repo-states.md)**: 14 days

**Pull Request [Response Time Maximum](https://github.com/chef/chef-oss-practices/blob/main/repo-management/repo-states.md)**: 14 days

A place for storing [Chocolatey](https://chocolatey.org/) packages managed by Chef!

## Updating Packages

- Install the [Chocolatey cli](https://chocolatey.org/install)
- Ensure you have an account with Chocolatey and that account is an owner of the package you want to update
- Edit the package. See [this example](https://github.com/mwrock/Chocolatey-Packages/pull/61).
- Build the package: `choco pack .\chefdk\chefdk.nuspec`
- Push the package to Chocolatey: `choco push .\chefdk.2.5.3.nupkg`

Once the package passes automated testing in Chocolatey's test infrastructure, the package will be available to the public.
