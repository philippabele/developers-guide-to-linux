# Configuring Services
Resources for this section are the [Suse Documentation](https://www.suse.com/support/kb/doc/?id=000019672), a [Medium Article](https://medium.com/@benmorel/creating-a-linux-service-with-systemd-611b5c8b91d6), a [StackOverflow Contribution](https://stackoverflow.com/questions/45384429/how-to-execute-a-python-script-in-a-different-directory) and a [Python Documentation](https://pythonbasics.org/webserver/).

Following the everything is a file directive of Linux/Unix services are defined in files.
These files are located in */etc/systemd/system*.

## Example Service
To demonstrate the configuration of systemd services in this section a python server service will be created.


### Python Server
Python offers a online way of starting a webserver, by loading the module *http.server*:

``` bash
python -m http.server
```
To display something create a folder */home/your-user/www* and create a file *index.html* with the following content in it.

``` html
<h1>I am a Simple Python Server!</h1>
```

## The Service File
Lets create a simple web server service file:

``` 
[Unit]
Description=Simple Python Service
After=network.target
[Service]
WorkingDirectory=/home/liam/Documents/www
ExecStart=/usr/bin/env python3 -m http.server

[Install]
WantedBy=multi-user.target
```

In the first section *[Default]* the service is described (its name is based on the service filename).
Systemd maintains an order when starting services, to start services other services depend on before those depending on them. This dependencies are defined via the *After* field, which will let the server service start after the *network.target* service. 

In the next section *[Service]* details for executing the service are defined. *WorkingDirectory* sets the directory the service will be executed in. *ExecStart* defines the actual executable executed.

In the field *WantedBy* in the *[Install]* section defines the system state systemd tries to start the service in (see 011_booting_systems).
The value `multi-user.target` closely matches the system state 3 (Full Multiuser - on console, network operational)