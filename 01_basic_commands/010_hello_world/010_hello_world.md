- Download and install Docker Desktop

- run bash in an ubuntu base image

- echo hello world

!In Progress!

# Hello World!

To get started with Linux administration, a Ubuntu base Image will be set up in Docker and we will have it print "Hello World!"
If you are already working on a Linux System you can skip the Docker part.

## Installing Ubuntu Base Docker Image

Open a console (PowerShell or CMD) an enter the following command `docker pull ubuntu`.

Docker will start pulling the Ubuntu image. After pulling the image you can view it with the command `docker image ls`. The Ubuntu image should show up in the resulting list.

```
REPOSITORY   TAG       IMAGE ID       CREATED       SIZE
ubuntu       latest    597ce1600cf4   13 days ago   72.8MB
```

## Start the Docker Image and Open a Shell in It

Use the command `docker run ubuntu` to start up the container.
The command `docker ps -a` will list the running containers.

The container we just sterted should appear here.

```
Insert Container List here
```

Now we have a virtualized Ubuntu image running in Docker. The next step is to start a shell in this image to work with it. To start a shell in this image we use the command `docker exec -it <container name> /bin/bash`.

Now we are working with the shell we just started on our command line.

## Execute the 'Hello World!'

To let the shell greet the world the command `echo` will be used. The string to be put out on the shell ('Hello World!'), is supplied as an argument to `echo`. 

```
echo 'Hello World!'
```
