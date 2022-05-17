## Apparmor
Apparmor is an other MAC tool, it is commonly used on **Debain** based systems.
This section is based on the [SUSE Documentation](https://documentation.suse.com/sles/12-SP4/html/SLES-all/cha-apparmor-profiles.html#sec-apparmor-profiles-parts)

### AppArmor Profiles
AppArmor policies are defined in sol called profiles. The profiles are typically found in */etc/apparmor.d*
An exemplary AppArmor Profile can be seen below:

~~~~ bash
### App Armor Profiles offer the possibility to include extra files.
### In this case a file containing variable definitions is included.
##include <tunables/global>

### naming the application to confine and starting the block defining it 
/usr/bin/foo {
   ## Inclusion of an Abstraction
   ## Abstractions offer predefined templates for different use cases.
   #include <abstractions/base>

   ## Capability definition:
   capability setgid,
   ## Definition of allowed network access:
   network inet tcp,

   ## Allowing linking from /etc/sysconfig/foo to /etc/foo.conf:
   link /etc/sysconfig/foo -> /etc/foo.conf,
   
   ## Block of path access definitions:
   ## Unconfined execution mode:
   /bin/mount            ux,
   ## Use {} to define multiple possible options - in this case either an empty string or 'u':
   /dev/{,u}random     r,
   ## Use * as a wildcard for any combination of characters :
   /etc/foo/*            r,
   /lib/ld-*.so*         mr,
   ## Use [] for defining ranges:
   /proc/[0-9]**         r,
   ## Usage of a variable:
   /@{HOME}/.foo_file   rw,
   ## Owner conditional -> applying this rule only to the owner of the file.
   ## 'other' can be used to apply the rule to everybody but the user.
   owner /shared/foo/** rw,
   ## Execute local profile for this file
   ## See below for local profile definition
   /usr/bin/foobar       Cx,
   ## Use the profile bin_generic for executing this role
   /bin/**               Px -> bin_generic

   ## Definition of local profile
   profile /usr/bin/foobar {
      /bin/bash          rmix,
      /bin/cat           rmix,
      /bin/more          rmix,
      /var/log/foobar*   rwl,
      /etc/foobar        r,
   }
}
~~~~
Taken from [here](https://documentation.suse.com/sles/12-SP4/html/SLES-all/cha-apparmor-profiles.html#sec-apparmor-profiles-parts).

The following access controls can be used:
- r - read mode - a program can read a resource
- w - write mode (cannot be specified together with a) - a program has full write access to a resource
- a - append mode (cannot be specified together with w) - a program can append to file, cannot alter the file in an other way
- k - file locking mode - a program has the ability to take file locks
- l - link mode - a program has access to hard links
- link <source> -> <target> - link pair rule (cannot be combined with any other)
- m - memory map as executable
- Ux - unconfined execution
- Px - use external profile for this
- Cx - use local profile for this

Rules can be preceded by `allow` (default -> has not to be written) or `deny` to apply the corresponding action.

## Exercise
- Write an AppArmor Profile for the imaginary application *foobar* granting it write access to */tmp*. Include the `base` abstraction.
- Read into the */etc/apparmor.d/abstractions* file to understand what is does. 





