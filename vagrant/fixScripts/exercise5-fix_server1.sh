#!/bin/bash
#add fix to exercise5-server1 here

# Disable StrictHostKeyChecking
echo "Host *" > /home/vagrant/.ssh/config && echo " StrictHostKeyChecking no" >> /home/vagrant/.ssh/config

# Create Key-pair
ssh-keygen -N "" -f /home/vagrant/.ssh/id_rsa

# Copy public key to shared folder
cp /home/vagrant/.ssh/id_rsa.pub /vagrant/server1.key

# Change ownership
chown -R vagrant:vagrant /home/vagrant/
