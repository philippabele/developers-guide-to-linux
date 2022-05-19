### Changing Kernel Runtime Parameters
This chapter is based of the [RedHat documentation](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/managing_monitoring_and_updating_the_kernel/configuring-kernel-parameters-at-runtime_managing-monitoring-and-updating-the-kernel)

#### Kernel Runtime Parameters
Kernel Runtime Parameters can be changed at runtime, they can be addressed via the command `sysctl` and the configuration files and folders */etc/sysctl.conf*/*/etc/sysctl.d/*.

The configurable variables are divided into classes, on Ubuntu systems the following Classes are present:

- abi - Execution domains and personalities
- debug - Kernel debugging interfaces
- dev - Device-specific information
- fs - Global and specific file system tunables
- kernel - Global kernel tunables
- net - Network tunables
- user - User Namespace limits
- vm - Tuning and management of memory, buffers, and cache
- *List taken from [RedHat documentation](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/managing_monitoring_and_updating_the_kernel/configuring-kernel-parameters-at-runtime_managing-monitoring-and-updating-the-kernel)*

A full list of variables can be viewed with the `sysctl` command and the `-a` flag: `sysctl -a`.

#### Configure Parameters Temporally

To alter the value of a kernel runtime parameter temporally use sysctl like the following:

~~~~
sysctl <class>.<parameter>=<value>
~~~~

#### Configure Parameters Permanently

To alter a runtime parameter permanently redirect the output to of the above command to be appended to the configuration file */etc/sysctl.conf*:

~~~~
sysctl <class>.<parameter>=<value> >> /etc/sysctl.conf
~~~~

Alternatively the configuration files in */etc/sysctl.d/* can be modified manually. Either create a new file or modify an existing one in */etc/sysctl.d/*, the files have to contain one value assignment per line:

~~~~
<class0>.<parameter0>=<value0>
<class1>.<parameter1>=<value1>
...
<classN>.<parameterN>=<valueN>
~~~~

#### Example

The hostname of your computer can be changed with the variable `kernel.hostname`. 
A documentation of runtime parameters can be found [here](https://sysctl-explorer.net/)

#### Exercice

- Find out the current hostname of your host.
- Change the hostname to 'dhbw-testhost'
