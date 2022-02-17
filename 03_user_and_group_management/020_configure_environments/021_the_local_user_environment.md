# Configuring the Local User Environment
This Section is based of an [article by RedHat](https://www.redhat.com/sysadmin/customize-user-environments) and Chapter 07 of Linux - Rheinwerk Verlag.

The user environment is configured via files, in a default configuration they are:

- *.bash_logout*
- *.bash_profile* (sometimes *.profile*)
- *.bashrc*

Templates for these files can be found in */etc/skel*. Everything contained in */etc/skel* will be copied into a newly created users home directory. The binary path is defined in this file. To alter the template for the user environment, alter the files in */etc/skel*.

## .bash_profile
This file gets executed for login shells. In a default configuration it calls *.bashrc*.
Define your additional environment variables here.

## .bashrc
This file gets executed each time you open a new bash while already being logged in.

## Useful Environment Variables
Listed below are some commonly used environment variables and their usage:
- PATH - String that contains all directories bash looks for executables (Add dir with `export PATH=$PATH:<new dir>`)
- SHELL - path to the executable of your preferred shell (usually */bin/bash*)
- EDITOR - default editor
- PS1 - your default bash prompt (new ones can be created in [online editors](https://bashrcgenerator.com/))

## .bash_logout
Gets executed when a bash is closed if it exists.

## Exercise
Make the bash say Hello \<your name here\> when you login.
