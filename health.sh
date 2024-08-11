#!/bin/bash

echo “Welcome $USER on $HOSTNAME”
echo “#################################”

RAM=$(free -m | grep Mem |awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
echo “#################################”
echo “The available RAM is $RAM MB”
echo “#################################”

echo “The current load average is $LOAD”

