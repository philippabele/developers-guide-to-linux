### Check Resources

To check on available system resources the tool `top` can be used.
Below is an exemplary output of `top`:

~~~~
top - 15:34:28 up  1:26,  3 users,  load average: 0.50, 0.54, 0.61
Tasks: 398 total,   1 running, 397 sleeping,   0 stopped,   0 zombie
%Cpu(s):  1.0 us,  0.6 sy,  0.0 ni, 98.4 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :  15413.3 total,   9340.8 free,   3648.2 used,   2424.3 buff/cache
MiB Swap:  26913.0 total,  26913.0 free,      0.0 used.  11246.0 avail Mem
~~~~

At the end of the top line the average load of the CPU is displayed in the last minute, the last five minutes and the last fifteen minutes.
In the next line the CPU loads on each core are shown in percent, followed by the usage of the physical memory, followed by the usage of the usage of the swap memory.

The tool `htop` offers a human readable way of displaying the same statistics, it can be installed from the package repositories.

#### Exercise
Install the tool `htop` with `apt install` and display the available resources.
