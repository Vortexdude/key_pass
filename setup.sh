#!/bin/bash

# Define device ID variables
idVendor="058f"
idProduct="6387"
setCredsScriptPath="/usr/local/bin/set_creds.sh"
unsetCredsScriptPath="/usr/local/bin/unset_creds.sh"

chmod +x "$setCredsScriptPath"
chmod +x "$unsetCredsScriptPath"

# Create udev rule for device insertion
echo "ACTION==\"add\", ATTRS{idVendor}==\"$idVendor\", ATTRS{idProduct}==\"$idProduct\", RUN+=\"$setCredsScriptPath\"" > /etc/udev/rules.d/set_aws_creds.rules

# Create udev rule for device removal
echo "ACTION==\"remove\", ATTRS{idVendor}==\"$idVendor\", ATTRS{idProduct}==\"$idProduct\", RUN+=\"$unsetCredsScriptPath\"" >> /etc/udev/rules.d/set_aws_creds.rules

# Create placeholder files for script execution confirmation
echo "Device Inserted ... " > "$setCredsScriptPath"
echo "Device Removed ... " > "$unsetCredsScriptPath"


