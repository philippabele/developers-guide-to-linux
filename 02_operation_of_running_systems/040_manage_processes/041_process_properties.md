# Process Properties
This chapter is based of the chapter 26 of Linux - Rheinwerk.

## Basics
Processes are programs being executed. When a program is started its process in entered into the process control block of the kernel. This data structure keeps 
information about the process like its Process ID (PID) or the User ID (UID) of the user that started it.

### Types of Processes
There are different types of processes:
- **Background Processes**: Started from the shell by putting a `&` behind a program call. The `&` sends the process to the background. Background processes can be listed with `jobs` (`jobs -l` for more details) and brought to the foreground with `fg %<job-id>`. `Ctrl-Z` stops a running job and keeps it listed in the jobs table, the stopped job can be continued by typing `bg %<JID>` for background or `fg %<JID>` for continuing it in the foreground.
- **Daemons**: Daemons work in the Background too, they are used to fulfill tasks, that need no direct control, i.e. an Email- or Webserver. Daemons are normally started during the boot process.


### Properties of Tasks

Using the tool `top` a taskmanager-like interface will appear in your bash.

~~~~
  PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
  297 friedri+  20   0   10044   5068   3360 S   0.0   0.0   0:00.18 bash
~~~~

In the above example an exemplary entry taken from the top command can be seen.
Top shows the main properties of an process:
- **PID**: The Process ID of the shown process
- **USER**: The User who started the process
- **PR**: Priority of the Process, Processes with higher priority get more CPU time.
- **NI**: Nice value of the process, affects priority of the process
- **VIRT**: Total amount of virtual memory consumed by the process (memory in RAM and memory swapped to disk)
- **RES**: Actual RAM memory usage
- **SHR**: Amount of memory chared with other processes
- **%MEM**: Memory used in relation to total RAM memory

## Exercise
Start a background process with the command `sleep 300`, list the background jobs and bring the created job to the foreground.
