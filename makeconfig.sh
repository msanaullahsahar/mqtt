#!/bin/bash

# Download mosquitto standard conf file.
echo "Downloading mosquitto.conf file"
wget https://raw.githubusercontent.com/msanaullahsahar/mqtt/main/mosquitto.conf

# Get the hostname
echo "Getting hostname"
hostname=$(hostname)

# Replace 'domainName' with the hostname in the mosquitto.conf file
sed -i "s/domainName/$hostname/g" mosquitto.conf

# Echo a completion message
echo "Replacement complete."

# Moving file to destination
mv mosquitto.conf /etc/mosquitto/mosquitto.conf

echo "conf file moved successfully."
