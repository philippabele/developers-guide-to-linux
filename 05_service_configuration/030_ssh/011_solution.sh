#!/bin/bash
ssh-keygen -t rsa -b 4096
## Specify your keyfile
cat <keyfile>.pub >> ~/.ssh/authorized_keys