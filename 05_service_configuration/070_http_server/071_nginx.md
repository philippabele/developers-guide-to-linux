# Nginx Web Server

This section is based on the [Nginx website](https://www.nginx.com/) and d[ocumentation](https://docs.nginx.com/nginx/admin-guide/web-server/serving-static-content/).

Nginx is a web server and reverse proxy that is used to serve static files and dynamic content.

## Installation
To get nginx under Ubuntu the package *nginx* has to be installed.

## Configuration
The default nginx site configuration (*/etc/nginx/sites-available/default*) can be seen below

```
server {
    listen 80 default_server;
    listen [::]:80 default_server;
    root /var/www/html;

    # Add index.php to the list if you are using PHP
    index index.html index.htm index.nginx-debian.html;

    server_name _;

    location / {
            # First attempt to serve request as file, then
            # as directory, then fall back to displaying a 404.
            try_files $uri $uri/ =404;
    }
}

```

In the default configuration nginx will try to serve a file from the defined root directory. If the file specified in the URI does not exist, nginx will try to serve the URI as a directory. If that doesn't exist too, nginx will display a 404 error page.

The webserver will be exposed to port 80 on the localhost.
The root directory is defined as */var/www/html*.

We can add a new location with an additional location directive:

```
location /test/ {
    root /var/www;
}
```
This tells nginx to use */var/www* as the root directory when calling the location /test/ resulting in nginx serving files in *root_directory* + */test/*.

## Exercise
Write a *index.html* page with the content *not /* and serve it from *localhost/not/*.