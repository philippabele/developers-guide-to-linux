sudo mkdir /var/www/not
sudo echo "not /" > /var/www/not/index.html

# add the following block to /etc/nginx/sites-available/default
# location /not/ {
#    root /var/www;
# }