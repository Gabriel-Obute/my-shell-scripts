#!/bin/bash

## This is a Webserver
TMP_URL=https://www.tooplate.com/zip-templates/2108_dashboard.zip
TMP_NAME=2108_dashboard
PACK=apache2

echo "#############################"
echo "Installing Apache2 Webserver"
echo "#############################"

sudo apt update -y > /dev/null
sudo apt install $PACK -y > /dev/null

echo "##################################"
echo "Downloading Website Template files"
echo "##################################"

cd /tmp
wget $TMP_URL
sudo unzip $TMP_NAME.zip


echo "###############################"
echo "Copy template files to html dir"
echo "###############################"

cd $TMP_NAME
sudo cp -r * /var/www/html/

ls /var/www/html/
rm -rf /tmp/$TMP_NAME	

