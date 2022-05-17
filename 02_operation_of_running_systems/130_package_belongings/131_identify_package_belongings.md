### Identify Package Belongings
This section is based on the [Ubuntu documentation](https://wiki.ubuntuusers.de/apt-file/) and a [LinuxAudit Article](https://linux-audit.com/determine-file-and-related-package/).
On systems using `apt` as a package manager the tool `apt-file` can be used to determine which package a file belongs to.

#### Commands
The tool knows the following commands:

- update - updates the index
- search <pattern> - searches all known packages for a file matching *pattern*
- list <pattern> - list all files of the package matching *pattern*
- purge - purges the cache

##### Example
The below example lists all files belonging to vim: 

~~~~ bash
apt-file list vim
~~~~

#### On RedHat
On RedHat the package manager `rpm` has the capabilities to do the same operations with the following flags:

- `-qf <file>` - list packages using file
- `-ql <package>` - list files in package

##### Example
The below example does the same as the one above:

~~~~ bash
rpm -ql vim
~~~~

#### Exercise
- Install the tool `apt-file`
- Update the `apt-file` index
- Search for the package containing */bin/ls*
