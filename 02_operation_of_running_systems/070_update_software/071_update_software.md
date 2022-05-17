## Updating Software

This chapter is based on the chapter 14.2 of Linux - Rheinwerk Publishing.

### Package Management

The default package manager on Debian based distributions like Ubuntu is `apt`. 
Apt can be used to install, update and remove software packages.
Besides installing the actual software package the package manager also installs packages which the actual package needs as dependencies.

#### Software packages

Software packages contain the binaries used to execute said software, documentation like man pages, HTML documentation, configuration files and in some cases scripts to start/quit the software.
Per default these packages are downloaded from remote repositories by `apt` but these packages can also be downloaded from other sources, like for example the website of a specific software.

#### Repositories

When installing a not local package with `apt` it gets the packages from remote repositories listed in the file */etc/apt/sources.list*.
The command `apt update` indexes the packages and versions located in the repositories listed in */etc/apt/sources.list*.

#### APT Operations

The apt default operations are:

- install: Install a new package.
- update: Update the package index.
- upgrade: Upgrade packages but do not install new dependencies or remove old ones.
- dist-upgrade: Upgrade with resolved dependencies.
- remove: Remove an installed package and keep its data.
- purge: Remove an installed package together with its data, like configuration files

#### Examples

As `apt update` updates the index od packages and their versions located in the remote repositories, it has to be run before each operation.
To install the `vim` editor run: 

~~~~ bash
sudo apt update
sudo apt install vim
~~~~

To upgrade a specific package if installed:

~~~~ bash
sudo apt update
sudo apt install --only-upgrade vim
~~~~

To update all packages on the system:

~~~~ bash
sudo apt update
sudo apt upgrade
~~~~

If a software vendors offer their software directly from their website. On Debian based systems, *deb* packages need to be downloaded these can be installed by the following commands:

~~~~ bash
sudo apt update
sudo apt install ./Downloads/your_downloaded_package.deb
~~~~

### Exercice 
- Read the man page of apt/apt-get if you want to learn more.
- Install the web server nginx and remove it completely using `apt`. 
