# Configure a Caching DNS Server


## Bind
The package *BIND* provides the service *named* which can serve as a caching DNS server. The caching server is able to cache queries for a certain time - TTL (Time to Live). This allows for faster response times. 

## Installation
On Debian Systems the package *bind9* has to be installed (`apt`). To ensure the name server starting on each startup it has to be enabled in systemd (`systemctl`).

Per default the installed service will cache DNS queries.

## Configuration
To configure the *named* service the file */etc/named.conf* has to be edited. 
In the default configuration the DNS server accepts from localhost. To allow traffic from other systems add the statement any to the following lines:

```
listen-on port 53 { 127.0.0.1; any; };
allow-query { localhost; any; };
allow-query-cache { localhost; any; };
```
And enable recursion:

```
recursion yes;
```

## Exercise
- Install the package *bind9*
- Configure view the configuration file */etc/named.conf*