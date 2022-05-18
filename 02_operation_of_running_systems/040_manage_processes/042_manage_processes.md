# Manage Processes
Processes can be controlled by signals sent via the terminal.

## List Processes
To get an interactive view over the current processes `top` can be used.
The tool `ps` gives a static list of the processes of the current session. To see every process on the system the flag `-e` can be used: `ps -e`
The tool `pstree` shows processes and their parents in a tree-like view.
The tool `pidof` can be used to find PIDs of a program if it has been started as a process.

## Send signals to processes
The tool `kill` is used to send signals to processes, some useful signals are listed below:
- **Kernel Signals** - The receiver of this signals is the kernel
  +  9 - SIGKILL/KILL - The process is killed by the kernel
  + 19 - SIGSTOP/STOP - The process will be stopped/paused
  + 18 - SIGCONT/CONT - A stopped/paused process will continued
- **Interceptable Signals** - This signals can be intercepted by the process
  +  1 - SIGHUP/HUP - The process is ordered to halt and restart
  + 14 - SIGALRM/ALARM - Notifies about an alarm set with the syscall alarm()
  + 15 - SIGTERM/TERM - Notifies the program to gracefully terminate itself 

Signals can be sent like the following:

~~~~~ bash
kill -<Signal ID> <PID>
kill -<Signal Name> <PID>
kill <PID> # Kill alone sent SIGTERM -> kill -SIGTERM <PID>
~~~~~

To let the process 500 be killed by the kernel we would send `kill -9 500`.

## Exercise
Create a process by sending the program `sleep 300` to the background. Kill the PID displayed when sending it to the background via the kernel.