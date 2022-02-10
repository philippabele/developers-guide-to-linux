# Configuring the Global Environment
This Section is based of an [article by RedHat](https://www.redhat.com/sysadmin/customize-user-environments).

There are three files to configure your environment globally: 

- /etc/profile
- /etc/bashrc
- /etc/environment

## /etc/profile
This file gets executed each time a user logs in. It calls all scripts residing in */etc/profile.d*

## /etc/bashrc
This file (on Debian /etc/bash.bashrc) gets executed for each user when opening a new bash while being logged in.

## /etc/environment
This file is read on each login. The difference between the other two is, that it is no script but rather contains variable definitions directly.
Variables like *http_proxy* for Proxy configuration can be placed here:

``` bash
http_proxy = "https://proxyurl.tld:port"
```

## Exercise
Place a script in */etc/profile.d* that greets each new login with "Hi there from \<your name\>".