# Basic Network Configuration
This section is based on an [LinuxConfig article](https://linuxconfig.org/etcnetworkinterfacesto-connect-ubuntu-to-a-wireless-network) and a [Stackoverflow post](https://askubuntu.com/a/713941)
On Debian network interfaces are defined in the */etc/network/interfaces* file. This file includes the files in */etc/network/interfaces.d*.

## WLAN
To configure a wlan interface a file in */etc/network/interfaces.d* has to be created with the following contents:

```
auto wlan0
iface wlan0 inet dhcp
wpa-essid <wlan-ssid>
wpa-psk <wpa-key>
```

The interface `wlan0` has to be replaced with the actual interface, which can be determined with the command `ip a`

## Ethernet
To configure a ethernet interface use the following content:

```
auto eth0
iface eth0 inet dhcp
```

WLAN as well as ethernet are configured to retrieve their IP address via dhcp.
The system has to bw restarted to apply the settings.

The `auto` tag ensures the interfaces are brought up on startup.

## Exercise
- View the network devices on your machine.