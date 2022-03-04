# Logfiles
TODO Write based on
Per default the system logs are logged to the directory */var/log* on Linux systems. The folder contains logs created by the system and installed services.
Some of the most important logs are listed below:

- **auth.log** *(Debian)* or **secure** *(RedHat)* - Log of login attempts
- **dpkg** and **apt/history.log** - Log of the package management in Ubuntu
- **dmsg** and **kern.log** - Kernel messages (*dmsg* shows the last while *kern.log* shows older messages too)
- **daemon.log** - Installed services may create their own log files or log into *daemon.log*
- **syslog** *(Debian)* or **messages** *(RedHat)* - Global system activities are logged here
- **cron** - Log of scheduled jobs (more on this topic later)

## View Log Files
Most log files can be viewed with the standard text viewer tools like:
- `cat` - print whole file to terminal
- `less` - Scroll through a file - `Shift-G` -> End of file; `gg` -> Start of file; arrow keys or mouse wheel to move cursor; `/` -> Search for Pattern 
- `tail` - View only last few lines of a file
  
The tool `watch` can be used to execute a program periodically, thus by calling `tail <logfile>` with watch the view will be updated as new logs come in. A similar behavior can be achieved with the command `less -f` which will try to keep scrolling when reaching the end of a file.
New logs will be appended to an existing log file, so if you are looking for the freshest logs to investigate something they will be at or near the end of a log file.

## Journal
On newer systems *syslog* is replaced by *journal*. The syslogs can be viewed with the command `sudo journalctl` rather than via the actual log file.


