# The file system Outline

Like in Windows files in Linux/Unix are organized in a file tree. The first folder in this tree is called the root folder. While Windows has a separate tree for every device, devices get assigned a folder in the directory tree in Linux.
This topic is discussed in chapter 2 of the Linux command line.

## The root tree
The branches following the root are the following

- */bin*: contains binaries required to run the system
- */boot*: contains kernel, driver image for startup, boot loader
- */dev*: contains the devices connected to the PC (everything is a file)
- */etc*: contains system-wide configuration files
- */home*: contains the home directories of the users (normal users can only write here)
- */lib*: contains shared libraries
- */lost+found*: used in case of a file system corruption, for recovery purposes
- */media*: contains automatically mounted storage devices
- */mnt*: used for manually mounting storage devices
- */opt*: contains optional software, mainly commercial software
- */proc*: contains peepholes into the kernel
- */root*: home directory of the root user
- */sbin*: contains system binaries
- */tmp*: contains temporary files of programs (emptied on every start)
- */usr*: unix shared resources
  + */usr/bin*: contains programs installed by he distribution
  + */usr/lib*: shared libs for programs in */usr/bin*
  + */usr/local*: software not included in the distribution but installed systemwide
  + */usr/sbin*: contains system administrator programs
  + */usr/share*: contains shared date used by programs in */usr/bin*
  + */usr/share/doc*: contains system documentation
- */var*: contains data which is touched and changed frequently
  + */var/log*: contains logs produces by the system

For administrators the most frequently used directories are */etc*, */var* and */usr*
