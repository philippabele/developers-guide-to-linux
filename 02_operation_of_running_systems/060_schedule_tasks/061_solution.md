Run `crontab -e` enter
```
15  *  *  *  * <your username> echo 'Coming from Crontab' | systemd-cat
```
save and close the editor.