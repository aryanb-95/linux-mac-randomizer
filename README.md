# Mac-Randomizer

A simple, effective Bash script for Kali Linux that periodically randomizes your network interface's MAC address using `macchanger`.

---

### Why this script?

Maintaining privacy while testing network security can be tedious. This script takes the manual work out of the process by automating MAC address rotation at set intervals. It’s built for transparency, reliability, and ease of use in security-focused environments.

### Features

* **Automated Rotation:** Set your desired time interval and let the script handle the rest.
* **Security Checks:** Includes built-in checks to ensure you have the necessary root privileges.
* **Clean Logic:** Properly handles interface states to ensure stability during the switch.
* **Customizable:** Easily target any network interface (`eth0`, `wlan0`, etc.).

### How to use

1. **Ensure macchanger is installed:**
```bash
sudo apt update && sudo apt install macchanger
```


2. **Download or copy the script** to your Kali machine.

3. **Make the script executable:**
   ```bash
   chmod +x mac-randomizer.sh

4. **Run it with sudo privileges:**
```bash
sudo ./mac-randomizer.sh

```


### Important Considerations
* **Hardcoded Interface:** By default, the script targets `eth0`. If you are using Wi-Fi (`wlan0`) or a different network adapter, make sure to change the `INTERFACE` variable inside the script before running it.
* **Authorized Use Only:** This tool is designed for educational purposes and authorized security testing. Always ensure you have permission to modify network configurations on your infrastructure.

---
*Built with simplicity in mind. Happy testing!*
