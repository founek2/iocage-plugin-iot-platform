#!/bin/sh

# Create user 'tetris'
# pw add user -n tetris -c Tetris -s /bin/csh -m

# Configure shellinabox
# fetch -o /home/tetris/white-on-black.css https://raw.githubusercontent.com/shellinabox/shellinabox/master/shellinabox/white-on-black.css
# sysrc shellinaboxd_enable=YES
# sysrc shellinaboxd_flags="--css /home/tetris/white-on-black.css -t -s /:tetris:tetris:HOME:bastet"

git clone https://github.com/founek2/IOT-Platforma-bots.git /home/IOT-Platform-bots

# Start the service
# service shellinaboxd start

# sysrc -f /etc/rc.conf nginx_enable="YES"
# sysrc -f /etc/rc.conf rabbitmq_enable="YES"
# sysrc -f /etc/rc.conf mongod_enable="YES"
sysrc -f /etc/rc.conf pm2_enable="YES"

# service nginx start
# service rabbitmq start
# service mongod start
service pm2 start
