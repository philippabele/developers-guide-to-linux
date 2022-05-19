### NGINX Logging Configuration
This chapter is based on the [nginx documentation](https://docs.nginx.com/nginx/admin-guide/monitoring/logging/).

#### Log Levels
Nginx logging can be configured to log different levels of messages:

- warn
- error
- crit
- alert
- emerg

Per default the `error` level is used. To configure the log level for a server, put the `error_log` directive in the servers context:

~~~~~
server {
    error_log /var/log/nginx/error.log warn;
...
~~~~~
This configures this server to log all messages with a level of `warn` or less to the file `/var/log/nginx/error.log`.

#### Access Log
The access log is configured by the `access_log` directive. Its format can be defined with the `log_format` directive.

~~~~~
log_format access '$remote_addr - $remote_user [$time_local] '
                     '"$request" $status $body_bytes_sent '
                     '"$http_referer" "$http_user_agent"';

access_log /var/log/nginx/access.log access;
~~~~~

In the example above as a first action the log format is defined. The tags preceded by a `$` will be replaced by the corresponding values of the http request. After the format definition the access log is configured to log to the file `/var/log/nginx/access.log` with the log format defined (`access`).

#### Exercise
If you want to learn more about nginx read the [online documentation](https://nginx.org/en/docs/).


