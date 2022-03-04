# Schedule Tasks
This chapter is based of chapter 14.3 of Linux- Rheinwerk.

## Cron
To schedule tasks on Linux the utility cron is used.
Cron jobs are usually scripts or commands, which get executed by the cron daemon.
The jobs can be defined in various locations:
- */etc/crontab*: Global crontab for the administrator
- */var/spool/cron/crontab*: Crontabs of local users named after the users
- */etc/cron.[daily|weekly|monthly]*: Scripts can be placed here and will be executed daily, hourly or monthly
- */etc/cron.d*: Crontab files can be placed here to be executed

### The Crontab Format

```
# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name command to be executed
  17 *  *  *  * root    cd / && run-parts --report /etc/cron.hourly
```

In the above example it can be seen how cronjobs are timed. There are 5 fields for defining when to run the task

- Minute
- Hour
- Day of Month
- Month
- Day of Week

An asterisk `*` means, that the task will be run every unit of time (minute, hour, day, ...). A task scheduled with `17 5  *  *  *` will run every month, every day, on hour *5* and minute *17*.
The time frame is followed by the user which the task belongs to. The entry is ended with the actual command to be run. 

### The Crontab Tool
The crontab files are not to be edited directly, instead the tool `crontab` is used. The following flags are useful when working with the tool:
- `-u <username>`: Edit the crontab of the specified user
- `-l`: Print the content of the corresponding crontab
- `-r`: Delete the crontab file
- `-e`: Edit the crontab file

## Exercise
Create a crontab entry which will write 'Coming from Crontab' into the journal (see chapter before) every 5 minutes.