## SSH Server and Client
This chapter is based on the [Ubuntu Documentation](https://ubuntu.com/server/docs/service-openssh).

### Installing the OpenSSH
OpenSSH server is a commonly used SSH server under Linux. To install it on Debian based Systems run the following command:
This has to be installed on the machine to connect to.

~~~~
sudo apt install openssh-server
~~~~

To be able to connect the OpenSSH client has to be installed like this:

~~~~
sudo apt install openssh-client
~~~~

### Authentication
SSH offers multiple ways to authenticate users. The most commons to use are passwords and key-based authentication.
When authenticating with password the password of the user to login as has to be used. An exemplary connection call would look like this:

~~~~
ssh username@hostname
~~~~

After entering that if configured the caller will be asked for a password.

#### Public Key Authentication
To authenticate with a public key the user has to have a public key on the server. The public key has to be stored in the users `~/.ssh/authorized_keys` file. Key pairs can be created with the `ssh-keygen` command:

~~~~
ssh-keygen -t rsa -b 4096
~~~~

In the above example the `-t` switch was used to specify the type of key to generate in this case the key will be generated using *rsa* encryption. The `-b` switch specifies the size of the key in bits, in this case *4096* bits.

After following along with the creation procedure the contents of the file *<keyname>.pub* have to be added to the `authorized_keys` file of the remote user.

### Exercise
- Create an SSH key pair and add it to the `authorized_keys` file of your user.
- Read more about SSH authentication in the [Ubuntu Documentation](https://ubuntu.com/server/docs/service-openssh).