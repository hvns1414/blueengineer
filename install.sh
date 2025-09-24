
---

## 2️⃣ install.sh (Linux)

```bash
#!/bin/bash
echo "Installing Python requirements..."
pip3 install -r requirements.txt
echo "Checking if ufw is installed..."
if ! command -v ufw &> /dev/null
then
    echo "ufw not found, iptables will be used"
else
    echo "ufw is installed"
fi
echo "Installation complete! Run the checker with:"
echo "sudo python3 checker_firewall_hash_crossplatform_en.py"
