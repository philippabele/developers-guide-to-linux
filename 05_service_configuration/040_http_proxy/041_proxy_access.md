## HTTP Proxy Access
This chapter is based on the [Squid documentation](https://wiki.squid-cache.org/ConfigExamples/Authenticate/Ncsa).
Squid is a common proxy server that can be used for HTTP, HTTPS and FTP. In this section squid will be used to demonstrate the restriction of access to a http proxy.

### Squid Installation 
To get squid install the package *squid*.

### Squid Basic Authentication
Basic password authentication can be achieved with the `ncsa` authentication scheme.
To authenticate with `ncsa` a passwd file has to be created with the `htpasswd` tool:

``` bash
### New Password File
htpasswd -c -nbm /etc/squid/passwords username password
### Adding Users
htpasswd -nbm /etc/squid/passwords username password
### Delete Users
htpasswd -D -nbm /etc/squid/passwords username password
```
The example will create a password file in the directory `/etc/squid/passwords`.
To use this file for authentication the file */etc/squid.conf* has to be modified. 
The following has to be pasted in the section tagged with `TAG: auth_param` (*search with `/<pattern>` in vim*).

```
auth_param basic program /usr/lib/squid/basic_ncsa_auth /etc/squid/passwords
auth_param basic children 5
auth_param basic credentialsttl 1 minute
```

The following in the `acl` section:

```
acl auth proxy_auth REQUIRED
```
This defines a request id part of the acl `auth` if it is authenticated.

The following has to be pasted in the `http_access` section to deny all requests not part if the `auth` acl:

```
http_access deny !auth
http_access allow auth
... # other rules
http_access deny all
```
As the `http_access` tags are evaluated from top to bottom, the first matching rule will be used. So to block all requests without authentication the `http_access deny !auth` and `http_access allow auth` have to be at the beginning of the block.

### Exercise
Read the [squid wiki](https://wiki.squid-cache.org/) if you want to learn more about squid.