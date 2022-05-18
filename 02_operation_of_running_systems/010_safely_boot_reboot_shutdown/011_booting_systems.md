### Booting Systems

On a normal PC the BIOS searches all attached media for a Master Boor Record (MBR). The MBR contains Information like the bootloader and the partition table. The partition table keeps track over the partitions of the attached media. The bootloader is responsible for loading an operating system.

During the boot process the hardware is booted and the OS kernel is loaded, the started kernel then starts the *init* process which in turn reads configuration files to start corresponding services. During startup *init* goes through multiple runlevels, starting the system stepwise:

0. Halt - closing network connections, writing file buffers, unmounting files
1. Minimal System - single user, only basic system resources loaded, maintenance mode
2. Local Multiuser - no network
3. Full Multiuser - on console, network operational
4. Undefined - Can be defined by user
5. Full Multiuser GUI - full multiuser mode with graphical user interface
6. Reboot

Most systems either boot to level 3 or 5, depending on the requirement for a graphical use interface.
When shutting down the runlevels are taken down till level 0 is reached.

#### Systemd
Modern systems use systemd rather than initd as an init deamon.
Systemd uses unit dependencies to determine if a service needs an other service to run successfully before it is started. This ensures the integrity of the startup.

#### Exercise
Read the `systemd` manpage if you want to learn more. The topic services will be dealt with in a later chapter.
