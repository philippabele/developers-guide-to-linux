# Basic Network Configuration
This section is based on an [LinuxConfig article](https://linuxconfig.org/etcnetworkinterfacesto-connect-ubuntu-to-a-wireless-network), a [Stackoverflow post](https://askubuntu.com/a/713941) and the [Ubuntu Wiki](https://wiki.ubuntuusers.de/systemd/networkd/)
On Debian network interfaces are defined in the */etc/network/interfaces* file. This file includes the files in */etc/network/interfaces.d*.

## WLAN
To configure a wlan interface a file in */etc/network/interfaces.d* has to be created with the following contents:

```
auto wlan0
iface wlan0 inet dhcp
wpa-essid <wlan-ssid>
wpa-psk <wpa-key>
```

The interface `wlan0` has to be replaced with the actual interface, which can be determined with the command `ip a`:

```
2: enp2s0f0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 ...
...
3: wlp3s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 ...
...
```

The above example shows an output of `ip a`, the wlan interface `wlp3s0` and the ethernet interface `enp2s0f0` can be identified.



## Ethernet
To configure a ethernet interface use the following content:

```
auto eth0
iface eth0 inet dhcp
```

WLAN as well as ethernet are configured to retrieve their IP address via dhcp.
The system has to bw restarted to apply the settings.

The `auto` tag ensures the interfaces are brought up on startup.

## The Networking Service
The default networking service on Ubuntu is `systemd-networkd`. Systemctl can be used to start, stop, enable and disable it and to check its status as seen in the file **111_manage_startup_services**.

## Exercise
- View the network devices on your machine.