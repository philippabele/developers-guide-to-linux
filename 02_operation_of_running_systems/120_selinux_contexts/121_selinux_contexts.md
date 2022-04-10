# SELinux
This chapter is based on the Fedora documentation [[1]](https://docs.fedoraproject.org/en-US/Fedora/13/html/Security-Enhanced_Linux/sect-Security-Enhanced_Linux-SELinux_Contexts-SELinux_Contexts_for_Processes.html), [[2]](https://docs.fedoraproject.org/en-US/Fedora/11/html/Security-Enhanced_Linux/sect-Security-Enhanced_Linux-Working_with_SELinux-SELinux_Contexts_Labeling_Files.html), [[3]](https://docs.fedoraproject.org/en-US/quick-docs/getting-started-with-selinux/), [[4]](https://docs.fedoraproject.org/en-US/Fedora/11/html/Security-Enhanced_Linux/chap-Security-Enhanced_Linux-SELinux_Contexts.html)

## Mandatory Access Control
SELinux acts as an additional security layer (Mandatory Access Control (MAC)), added on top of the standard access policy (users, groups, permissions) called Discretionary Access Control (DAC), with DAC being evaluated before SELinux rules.
It allows a more granular way of defining access controls.
In SELinux every process and resource has an label called SELinux context.

These contexts are used to define how processes are allowed to interact with each other and their environment.
SELinux provides a whitelist based model, meaning things have to be explicitly allowed and are blocked by default.

SELinux is the default MAC tool for **RedHat** based systems.

## SELinux Contexts
SELinux Contexts have the following fields:

- user
- role
- type
- security level

The SELinux context type is the important field when concerned with interactions between processes. 

### Examples
Best practice for context types is for them to end on `_t` Examples of SELinux types are:

- httpd_t - webserver context
- tmp_t - context for files in */tmp*

As typically the webserver Apache is configured to be allowed access to files tagged with `httpd_t` it can access contents necessary for serving a web page or service. Per default Apache has no access rights to the `tmp_t` type preventing it from access there.
For more examples see the [Fedora documentation](https://docs.fedoraproject.org/en-US/quick-docs/getting-started-with-selinux/#getting-started-with-selinux-selinux-examples).

## View File Contexts
To view contexts assigned to files the command `ls` can be used with the flag `-Z` producing the following exemplary output:

```
unconfined_u:object_r:user_home_t:s0 01_basic_commands
```


## Change File Contexts
File contexts can be altered with the command `chcon` is used:

``` bash
chcon -t <new_context_type> <file>
```
When used with the `-t` switch, like above, the context type of a file is changed. The `-R` flag can be used to alter the contexts of a directory and its contents recursively.

## View Process Contexts
To view the context of a process `ps` can be used with the flags `-eZ`:

```
system_u:system_r:crond_t:s0-s0:c0.c1023 1302 ?  00:00:00 crond
```

This reveals that the process crond has the context type crond_t giving it access to cron relevant files.

# Exercise
Read the linked documentations if you want to learn more.
