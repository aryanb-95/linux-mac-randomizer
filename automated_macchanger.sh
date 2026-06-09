# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ #
# Description: It automates the process of changing MAC address in Kali linux using macchanger       #
# Author: aryanb-95                                                                                  #
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ #

#!/usr/bin/bash
INTERFACE="eth0"
INTERVAL=5

# -- Security check -- 
if [ "$EUID" -ne 0 ]; then
    echo "[-] Error: This script must be run with sudo privileges"
    exit 1
fi

echo "[+] Automated MAC randomizer initiated for interface: $INTERFACE"
echo "[+] Press Ctrl + C at any time to stop the script." 
echo "------------------------------------------------------------------------------------"

# --infinite loop until user interrupts --
while true; do
    echo "[*] Randomizing MAC address..."

    # 1. Interface down
    ip link set dev "$INTERFACE" down

    # 2. random MAC address using -r
    macchanger -r "$INTERFACE"

    # 3. Interface up
    ip link set dev "$INTERFACE" up

    echo "[+] MAC changed succesfully. Sleeping for $INTERVAL seconds..."
    echo "------------------------------------------------------------------------------------"


    sleep $INTERVAL

done