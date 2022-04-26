sudo apt install ntp
sudo vim /etc/ntp.conf
## Remove the configured timeservers, paste the new ones:
# server 0.hr.pool.ntp.org
# server 1.europe.pool.ntp.org
# server 2.europe.pool.ntp.org
sudo systemctl restart ntp