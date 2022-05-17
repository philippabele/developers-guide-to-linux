# Defining User Resource Limits
This section is based of the [Ubuntu Server Cookbook](https://subscription.packtpub.com/book/networking_and_servers/9781785883064/1/ch01lvl1sec17/setting-resource-limits-with-limits-conf).

The command `ulimit` controls the system resources a user is allowed to use. A process started by a user has to obey the resource limits set for this user.
The limits are defined in the file */etc/security/limits.conf*. 

Resources can be defined for the *domains*: user (syntax: username) and group (syntax: @groupname). Limits are differentiated into two *types* hard and soft limits. While soft limits can be altered by the user, hard limits are defined by the administrator and are a cap for the soft limits.- 

The following resource *items* can be limited (taken from */etc/security/limits.conf*):
 
- core - limits the core file size (KB)
- data - max data size (KB)
- fsize - maximum filesize (KB)
- memlock - max locked-in-memory address space (KB)
- nofile - max number of open file descriptors
- rss - max resident set size (KB)
- stack - max stack size (KB)
- cpu - max CPU time (MIN)
- nproc - max number of processes
- as - address space limit (KB)
- maxlogins - max number of concurrent logins for this user
- maxsyslogins - max number of logins on the system
- priority - the priority to run user process with
- locks - max number of file locks the user can hold
- sigpending - max number of pending signals
- msgqueue - max memory used by POSIX message queues (bytes)
- nice - max nice priority allowed to raise to values: [-20, 19]
- rtprio - max realtime priority

The syntax for defining new limits is: `<domain> <type> <item> <value>`
For example:

~~~~
@student        hard    nproc           40
~~~~

The above example grants a member of the group student a maximum count of 40 processes.

## Exercise
Write a hard limit for members of the group student, to limit their logins to 2


