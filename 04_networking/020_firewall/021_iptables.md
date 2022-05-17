## Packet Filtering

This section is based on chapter 32.6 of Linux - Rheinwerk.
On Linux packet filtering mechanisms are built into the Kernel. They can be configured with the `iptables` tool.

### Iptable Tables

Iptables has various functionalities, besides package filtering it also offers NAT possibilities. These functionalities are configured in different tables. The table to edit is specified by the `-t` flag. The default table is the `filter` table responsible for the package filtering configuration.

### Iptable Chains

Iptables sends packages down different chains based on rules. These chains determine what happens with the package. 

There are several predefined chains but it is also possible to create custom ones with the `iptables -N` command.

The following filtering chains are predefined:

- `INPUT` - Contains rules for packages designated for the local client
- `OUTPUT` - Contains rules applied to all outgoing packages
- `FORWARD` - Contains riles for all to be forwarded packages 

Iptables offers the following operations on chains:

- `-N <chain>` - Create new chain
- `-X <chain>` - Delete Chain
- `-E <old> <new>` - Rename a chain
- `-L <chain>` - List rules of specified chain
- `-F <chain>` - Flushes chain - Deletes all rules in chain

### Iptable rules

The iptable chains are made up of a collection of rules. Rules are evaluated from top to bottom, of one rule matches it will be applied to the package and the processing will be halted.
These are the most common rule operations:

- `-A <chain> <rule>` - add rule to an existing chain
- `-I <chain> <position> <rule>` - insert rule into chain on specified index; when no position specified, the rule will be inserted at index 0
- `-R <chain> <position> <rule>` - Remove rule at specific index
- `-D <chain> <rule-number/rule-name>` - Deletes rule matching rule-number or name

Rules are made up of filtering expressions and destinations. The destinations can be seen above in the listing below:

The following chains are possible:

- ACCEPT - The package will be allowed
- DROP - The package will discarded
- QUEUE - Forward the package to userspace (if supported by kernel)
- RETURN - Return to calling chain (if in user defined chain)
- LOG - Log into the kernel log
- REJECT - Same behavior as drop, sends back *Port Unreachable* error message.
- user defined chain - Jump into a user defined chain

The most common filtering expressions can be seen below, they can be negated with a `!`:

- `-s <source>` - Filters for the source of a package
- `-d <destination>` - Filters for the destination of a package
- `-i <interface>` - Filters for the interface that received the package
- `-o <interface>` - Filters for the interface to output the package
- `-p` <protocol> - Filters for the protocol used to transmit the package (most common are TCP or UDP)

Based on the used protocol filtering more filter modules will be loaded. Modules can also be loaded via the `-m <module>` flag. See the iptables manpage for more information.

When creating a rule the flag `-j` is used to *jump* to destination.

Network destinations can be applied in the following forms:
- Network Name
- Hostname
- Network Address + Subnet Mask
- IP-Address

### Persistance

Updates made via iptables will be temporary and reset after a reboot. To make the changes persistent the command `iptables-save` and redirecting the output to */etc/iptables/rules.v4* (for Debian) will make the changes persistent between reboots:

~~~~ bash
## Debian
iptables-save > /etc/iptables/rules.v4
## RedHat
iptables-save > /etc/sysconfig/iptables
~~~~

Taken from [here](https://www.thomas-krenn.com/de/wiki/Iptables_Firewall_Regeln_dauerhaft_speichern).

### Example
An exemplary rule can look like this:

~~~~ 
iptables -A INPUT -p tcp -j TCP
~~~~
This will add a call to the custom chain `TCP` for all incoming TCP packages.

### Exercise
Create a rule for all Incoming packages that drops the packages coming from the IP-Address `192.168.178.150`
