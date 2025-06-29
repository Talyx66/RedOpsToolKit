#!/bin/bash

echo "[+] Updating..."
sudo apt update

echo "[+] Installing base tools..."
sudo apt install -y nmap sqlmap nikto hydra net-tools whois gobuster dirb curl git python3-pip

echo "[+] Cloning XSStrike..."
git clone https://github.com/s0md3v/XSStrike tools/XSStrike

echo "[+] Cloning sqlmap..."
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git tools/sqlmap

echo "[+] Installing Python dependencies..."
pip3 install -r tools/XSStrike/requirements.txt

echo "[+] Setup complete. Tools are inside the 'tools/' directory."
