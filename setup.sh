#!/bin/bash

# Ensure script is run as root

if [[ $(id -u) -ne 0 ]]; then
echo "Please run this script as root"
exit 1
fi

# Update and install necessary packages

echo "Updating package lists"
apt update || { echo "Failed to update package lists"; exit 1; }
echo "Installing necessary packages"
apt install -y git python3-pip python3-virtualenv libffi-dev libssl-dev || { echo "Failed to install necessary packages"; exit 1; }

# Clone Algo repository

echo "Cloning Algo repository"
git clone https://github.com/trailofbits/algo.git

# Install additional dependencies

echo "Installing additional dependencies"
apt install -y --no-install-recommends python3-virtualenv libffi-dev libssl-dev

# Install requirements for Algo

echo "Installing requirements for Algo"
cd algo
python3 -m virtualenv --python="$(command -v python3)" .env &&
source .env/bin/activate &&
python3 -m pip install -U pip virtualenv &&
python3 -m pip install -r requirements.txt

# Modify the configuration file

echo "Modifying the configuration file"
nano config.cfg

# Run Algo

echo "Running Algo"
./algo <<EOF
12
y
y
HomeNet
y
y
N

localhost
EOF