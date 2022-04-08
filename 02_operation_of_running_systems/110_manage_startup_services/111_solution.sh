#!/bin/bash
sudo systemctl restart crond
# To check if the restart worked
systemctl status crond