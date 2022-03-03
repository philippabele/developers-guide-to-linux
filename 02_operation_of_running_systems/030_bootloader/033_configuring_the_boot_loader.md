# Configuring GRUB2
There are two places GRUB2 can be configured form:
- */etc/default/grub* - Actual configuration file
- */etc/grub.d/* - Folder containing GRUB configuration files.

After altering the configuration in one of this places the program `grub-makeconfig` has to be run, to build the file */boot/grub/grub.cfg*. The program has a wrapper, `grub-update`, which calls `grub-mkconfig -o /boot/grub/grub.cfg`.

Some common configuration options are:
- *GRUB_DEFAULT=0* - default entry grub starts after a timeout
- *GRUB_TIMEOUT=0* - timeout in seconds before the default entry is started