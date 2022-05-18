Run `crontab -e` enter
~~~~~
15  *  *  *  * echo 'Coming from Crontab' | systemd-cat
~~~~~
save and close the editor.
For user crontabs no username is needed.
