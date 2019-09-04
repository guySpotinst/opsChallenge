#!/bin/bash
#add fix to exercise2 here

# Remove host from /etc/hosts
sudo sed -i '/127.0.0.1/d' /etc/hosts
