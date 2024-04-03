# USB Device Event Handler with udev Rules

This Bash script is designed to automatically handle USB device insertion and removal events on a Linux system using udev rules. It creates udev rules to trigger specific scripts upon USB device insertion and removal.

## Purpose

The script aims to automate actions when a USB device is inserted or removed from the system. It sets up udev rules to run specified scripts upon these events, allowing for custom handling of USB device events.

## Usage

### Prerequisites

- **Linux Distribution**: This script is intended for use on Linux distributions with udev support.
- **Script Paths**: Ensure that the paths to the set_creds.sh and unset_creds.sh scripts are correctly specified in the script (`setCredsScriptPath` and `unsetCredsScriptPath` variables).

### Installation

1. **Set Device ID Variables**: Update the `idVendor` and `idProduct` variables in the script with the appropriate values for your USB device.

2. **Set Script Paths**: Update the `setCredsScriptPath` and `unsetCredsScriptPath` variables in the script with the paths to the scripts you want to run upon USB device insertion and removal, respectively.

3. **Execute the Script**: Run the script using Bash:
   ```bash
   bash usb_event_handler.sh
