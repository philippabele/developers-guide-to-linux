### Shutting Down Systems

Linux systems can be safely shutdown with the command `shutdown` it offers a variety of flags to customize the shutdown the mod important are:

- -c - cancel a planned shutdown
- -H - the system will be halted after the shutdown
- -P - the system will be powered off after the shutdown
- -r - the system will be rebooted after shutdown

A new shutdown is planned by typing: 

~~~~
shutdown -h 10
~~~~

The above example will schedule a shutdown of the system 10 minutes form now.
To shutdown a system instantly the time `now` can be specified.

#### Some Frontends
The commands `halt` and `poweroff` are frontends for the command shutdown. They use `shutdown` to execute their purpose.
Halt should leave the system powered on after the shutdown. Poweroff should power off the machine.

#### Exercise 
- Read the `shutdown man page to learn more about it.
- Write a script to instantly shut down and halt your system.
