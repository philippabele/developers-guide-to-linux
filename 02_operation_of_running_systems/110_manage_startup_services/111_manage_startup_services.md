## Manage Startup Services
The automatic start of services on system startup can be managed with the tool `systemctl`.

Systemctl allows to start, stop, check, enable and disable services. An enabled service will start on startup, a disabled one will not.
Systemctl is used like this:

~~~~
systemctl <operation> <service>
~~~~

With some of the most common operations being the following:
- start
- stop
- status - *for checking the status of the service*
- enable
- disable

All operations except the `status` will require root privileges.

### Checking a Service
Checking the status of a service will bring up the following view:

~~~~
crond.service - Command Scheduler
     Loaded: loaded (/usr/lib/systemd/system/crond.service; 
         enabled; vendor preset: enabled)
     Active: active (running) since Thu 2022-04-07 12:31:44 CEST; 
         1h 20min ago
   Main PID: 1399 (crond)
      Tasks: 1 (limit: 18355)
     Memory: 1.4M
        CPU: 94ms
     CGroup: /system.slice/crond.service
             -1399 /usr/sbin/crond -n

Apr 07 12:31:44 fedora crond[1399]: (CRON) INFO (running with inotify support)
~~~~

The second value (`enabled`) in the loaded field indicates whether the service is enabled to start on startup.
Below the services statistics its log entries are displayed.

### Example
To disable the cron daemon, which is responsible for executing the following command:

~~~~
sudo systemctl disable cron
~~~~

### Exercise
- Read the `systemctl` manpage to learn more.
- Restart the cron service with `systemctl` and check its status to ensure it restarted properly. *Info:* Using this feature can be useful to restart a service after altering its configuration.
