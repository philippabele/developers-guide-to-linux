# Time Synchronization
This section os based on the [German Ubuntu Documentation](https://wiki.ubuntuusers.de/ntpd/).
To synchronize the time via network the network time protocol can be used under Linux.

## Install NTP
To install the NTP package the command `sudo apt install ntp` has to be used.

## Configure NTP
To configure the NTP the file `/etc/ntp.conf` has to be edited. In this file the time servers to use can be specified:

~~~~
server 0.de.pool.ntp.org
server 1.de.pool.ntp.org
server 2.de.pool.ntp.org
server 3.de.pool.ntp.org
~~~~

Above the German time pool servers are configured. NTP servers can be searched [here](https://www.ntppool.org/en/). After a restart the service will use the newly configured servers.
It is recommended to use multiple time servers. The timeserver with the lowest offset to **Stratum 0** (original time sources) will be used. The command `ntpq -p` can be used to check the currently configured time servers.

## Exercise
- Install the NTP package
- Configure NTP to use the time server pools recommended for Croatia [here](https://www.ntppool.org/zone/hr).
