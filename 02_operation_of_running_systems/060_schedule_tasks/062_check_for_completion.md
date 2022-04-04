# Check if a Task was Executed
The cron daemon logs the execution of tasks to syslog. As a consequence the execution of the tasks can be seen in the system journal (systemd logs).

The journal can be viewed with the following command:

``` bash
sudo journalctl
# To get to the end of the file press Shift+G
```

An example taken from [here](https://bencane.com/2011/11/02/did-my-cronjob-run/) below:

```
 Nov 02 17:10:01 testbox CRON[2210]: (testuser) WRONG INODE INFO (crontabs/testuser)
```