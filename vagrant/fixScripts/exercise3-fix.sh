#!/bin/bash
#add fix to exercise3 here

# Edit apache2 sites-available to allow traffic and then restart the apache2 server
sed -i 's/deny\(.*from\)/allow\1/' /etc/apache2/sites-available/default && sudo service apache2 restart
