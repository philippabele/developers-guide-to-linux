# Static IP Routing
This section is based on the [RedHat documentation](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/5/html/deployment_guide/s1-networkscripts-static-routes) and a [Linux Config Article](https://linuxconfig.org/how-to-add-static-route-with-netplan-on-ubuntu-20-04-focal-fossa-linux).

## Show Current Routing Table
To show the currently routing table the command `ip route show` is used.

## Temporal IP Routing
To configure a temporal IP route the command `ip route` with the following opeations is used:

- add: `ip route add <destination>/<netmask> <gateway>`
- del: `ip route del <destination>/<netmask>`
- change: `ip route change <destination>/<netmask> <gateway>`
- append: `ip route append <destination>/<netmask> <gateway>`
- replace: `ip route replace <destination>/<netmask> <gateway>`

``` bash
# add a route to statically rout the ip address 192.0.2.1 over the address 10.0.0.1 as a hop/gateway
ip route add 192.0.2.1 via 10.0.0.1
```

The address to route also can be specified as a combination of IP address and netmask.

## Permanent IP Routing
Routes created by the ip command will only be applied temporally. To make the route permanent it has to be added to the file */etc/netplan/50-cloud-init.yaml* with the following syntax:

```
network:
    ethernets:
        enp0s3:
            dhcp4: false
            addresses: [192.168.1.202/24]
            gateway4: 192.168.1.1
            nameservers:
              addresses: [8.8.8.8,8.8.4.4,192.168.1.1]
            routes:
            - to: 172.16.0.0/24
              via: 192.168.1.100
    version: 2
```
*Taken from [here](https://linuxconfig.org/how-to-add-static-route-with-netplan-on-ubuntu-20-04-focal-fossa-linux)*

In the example the addresses `172.16.0.0/24` will be routed over the gateway `192.168.1.100` this applies to the interface `enp0s3`.

To apply this configuration the command `sudo netplan apply` has to be run.

## Exercise
Take the above netplan example an add a route to `172.18.52.31` via `192.168.1.101`.