#!/bin/bash

date
sudo systemctl status apache2 > /dev/null

if [ $? -eq 0 ]

then
echo “Apache web server running”

else
echo “Apache web server not running”
echo “starting Apache web server”

sudo systemctl start apache2
echo “Apache web server started successfully”
fi

