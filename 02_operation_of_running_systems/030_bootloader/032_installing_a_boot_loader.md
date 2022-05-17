# Installing GRUB2
A boot loader will be installed per default when installing a new Linux system.

It can be necessary to reinstall a boot loader for troubleshooting reasons. 

## Chroot environment
To be able to access a system with a broken boot loader chrooting can be used. Chrooting enables to change the root directory a Linux system is running from to the root directory of an other system. The chrooting can be done from a Live system:

1. Boot the live system
2. Mount the original root partition (i.e. `sudo mount /dev/sd.. /mnt`)
3. Additionally necessary system folders need to be bound
   1. `sudo mount --bind /dev /mnt/dev`
   2. `sudo mount --bind /dev/pts /mnt/dev/pts`
   3. `sudo mount --bind /sys /mnt/sys`
   4. `sudo mount --bind /proc /mnt/proc`
   5. `sudo mount --bind /run /mnt/run`
4. Change into the origional system: `sudo chroot /mnt /bin/bash`

For more information see the [Ubuntu Documentation](https://wiki.ubuntuusers.de/chroot/Live-CD/)

## Simple Reinstallation
To reinstall grub for example in case of a damaged MBR do the following:

~~~~ bash
sudo grub-install /dev/sda # where to place the boot loader
~~~~

By doing this the configuration files */etc/default/grub* and */etc/grub.d/\** are untouched.

## Complete Reinstallation
To do a complete reinstall with new configuration, etc. do the following.
Before the actual installation it has to be ensured that the grub packages are installed, on Ubuntu the packages

- grub-common
- grub-pc/grub-efi
- os-prober (for detecting other operating systems on pc)

are needed. They can be installed with the `apt` utility.

To ensure a clean new installation the existing configurations can be purged with:

~~~~ bash
sudo apt-get purge grub-* os-prober grub-gfxpayload-lists
~~~~

To install teh new boot loader, first install the packages listed above:

*For Bios PCs:*
~~~~ bios
sudo apt-get install grub-pc os-prober grub-gfxpayload-lists
~~~~

*For EFI PCs:*
~~~~ bash
sudo apt update
sudo apt-get install grub-efi-amd64-signed os-prober #  grub-efi-amd64 or grub-efi-ia32 (for 32Bit systems) also possible
~~~~ 

In the masks following the installation destination of grub has to be determined.
