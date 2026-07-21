#!/bin/zsh

# This script is used by Bartender to show or hide the FortiTray menubar icon
# based on if FortiClient is connected or not.

vpnExitFile="/Library/Application Support/Fortinet/FortiClient/data/vpn-exit-status"

if [[ -e "$vpnExitFile" ]]; then
# disconnected
echo false # tells Bartender to hide FortiTray
else
# connected
echo true # tells Bartender to show FortiTray
fi
