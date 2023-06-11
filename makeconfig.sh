#!/bin/bash

# Get the hostname
hostname=$(hostname)

# Replace 'domainName' with the hostname in the mosquitto.conf file
sed -i "s/domainName/$hostname/g" mosquitto.conf
