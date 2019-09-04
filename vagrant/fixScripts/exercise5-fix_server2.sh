#!/bin/bash
#add fix to exercise5-server2 here

# Disable StrictHostKeyChecking 
echo "Host *" > /home/vagrant/.ssh/config && echo " StrictHostKeyChecking no" >> /home/vagrant/.ssh/config

# Append the key from the shared folder into authorized_keys
cat /vagrant/server1.key >> /home/vagrant/.ssh/authorized_keys

# Change ownership
chown -R vagrant:vagrant /home/vagrant/
