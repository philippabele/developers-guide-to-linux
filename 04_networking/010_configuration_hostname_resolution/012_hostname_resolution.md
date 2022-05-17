## Hostname Resolution
This chapter is based on the [freedesktop documentation](https://www.freedesktop.org/software/systemd/man/resolvectl.html) and the [Ionos Guide](https://www.ionos.de/digitalguide/hosting/hosting-technik/hostname/).

### Hostnames
Hostnames or domain names are a human readable identifier to identify network devices. A hostname points to the IP of a device. To be able to connect to a device its hostname has to be resolved to its IP address. This is done by hostname resolution. Host machines which are in a network can be addressed by the resolved IP address. 

Hostnames offer the advantage that they stay the same, while the IP address can change. Which means they can serve as a reliable identifier for a device or service.

### Static Resolution
On Linux systems static domain name resolution can be defined in the file */etc/hosts*:

~~~~
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
~~~~

The file points the localhost domains to the localhost ip addresses.
An entry for *example.com* would look like this:

~~~~
93.184.216.34 example.com
~~~~

### Dynamic Resolution
As the IP of a network target might change, dynamic hostname resolution offers a way to connect to the device anyway, without knowing its exact IP. To do this a query is sent to a DNS server, the Server resolves the hostname to an IP and sends it back to the host.
To check the currently used nameservers `resolvectl status` can be used:

~~~~ 
...
DNS Servers: 192.168.178.1
...
~~~~

To alter the resolve configuration written in */etc/resolve.conf* the tool `resolvconf` has to be used, as the file is managed.
After installing the tool the file */etc/resolvconf/resolv.conf.d/head* can be altered. An additional name server can be added to this file.
The format of the entry would be:

~~~~
nameserver <IP>
~~~~

After editing the file the `resolvconf` has to be run with the flag `-u` to update the */etc/resolv.conf* file.

### Exercise 
- Install `resolvconf`
- Add the Google DNS Server *8.8.8.8* to the systems configuration

