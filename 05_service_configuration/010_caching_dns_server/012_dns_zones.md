### DNS Zones
Based on this [Ubuntu Wiki](https://wiki.ubuntuusers.de/DNS-Server_Bind/#Das-Anlegen-der-Zonendateien) article, the examples are taken from there.

DNS Zones are 

#### Forward vs. Forward Lookup
In Reverse Lookup the DNS server is responsible for resolving the IP address to the hostname. In Forward Lookup the DNS server is responsible for resolving the hostname to the IP address.

#### Defining Zones
When configuring a new zone two files have to be created, one for the forward lookup and one for the reverse lookup. The naming convention of the files is the following:

~~~~~ bash
### Forward Lookup
db.domainname
### Reverse Lookup
db.z.y.x
### z.y.x being parts of the IP address x.y.z (192.168.0.* -> db.0.168.192)
### note the reverse order!
~~~~~

An exemplary forward lookup file looks like this:

~~~~~
;; db.domainname
;; Forwardlookupzone für domainname
;;
$TTL 2D
@       IN      SOA     rechnername.domainname. mail.domainname. (
                        2006032201      ; Serial
                                8H      ; Refresh
                                2H      ; Retry
                                4W      ; Expire
                                3H )    ; NX (TTL Negativ Cache)

@                               IN      NS      rechnername.domainname.
                                IN      MX      10 mailserver.domainname.
                                IN      A       192.168.0.10

rechnername                     IN      A       192.168.0.10
localhost                       IN      A       127.0.0.1
rechner1                        IN      A       192.168.0.200
mailserver                      IN      A       192.168.0.201
rechner2                        IN      CNAME   mailserver
~~~~~

##### Forward Lookup

The time to life (`TTL`) specifies the time frame information is cached.
After the `TTL` entry the `SOA` (Start of Authority resource records) entry is defined. It specifies the following values:

- *zone-origin* - `rechnername.domainname` - Fully Qualified Domain Name (FQDN) of the primary DNS server.
- *zone-contact* - `mail.domainname` - the email address of the responsible person, the `@` is substituted for a `.` (mail.domainname would be mail@domainname)
- *serial* - `2006032201` - important for versioning, typically in the format *YYYYMMDDSS* (current time) to allow secondary DNS servers to notice changes.
- The following entries should be on good default values and don't have to be changed.
- *refresh* - Refresh interval for secondary DNS servers
- *retry* - Time a secondary DNS server waits to send another query if the previous one failed.
- *expire* - Timeout time for a connection attempt of a secondary DNS server to the primary server.
- *nx* - Time frame for negative caching (caching of failed lookup attempts).

The entry types being the following:

- `NS` - **value:** FQDN of a nameserver - *primary and secondary DNS servers of domain should have an entry*
- `A` - **value:** IP address - *resolves name -> IP address*
- `CNAME` - **value:** hostname of the specified client
- `MX` - **value:** priority, hostname - *mail-server for the domain + priority -> servers with low priority will be tried first.*
- `PTR` - **value:** FQDN - *reverse lookup IP -> name (e.g. foo.example.com)*

##### Reverse Lookup

An exemplary reverse lookup file looks like this:

~~~~~
;; db.0.168.192
;; Reverselookupzone für domainname
;;
$TTL 2D
@       IN      SOA     rechnername.domainname. mail.domainname. (
                                2006032201      ; Serial
                                        8H      ; Refresh
                                        2H      ; Retry
                                        4W      ; Expire
                                        3H )    ; TTL Negative Cache

@       IN      NS      rechnername.domainname.

10      IN      PTR     rechnername.domainname.
200     IN      PTR     rechner1.domainname.
201     IN      PTR     rechner2.domainname.
~~~~~

Here the `PTR` entry type comes to use. The numbers in the first row represent the last byte of the IP address.

#### Exercise:
Read the [Wikipedia article](https://en.wikipedia.org/wiki/Domain_Name_System) on DNS if you want to learn more.

