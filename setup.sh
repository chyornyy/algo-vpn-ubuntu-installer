#!/bin/bash

# Update and install necessary packages
sudo apt update || { echo "Failed to update package lists"; exit 1; }
sudo apt install -y git python3-pip python3-virtualenv libffi-dev libssl-dev || { echo "Failed to install necessary packages"; exit 1; }

# Clone Algo repository
git clone https://github.com/trailofbits/algo.git

# Install additional dependencies
sudo apt install -y --no-install-recommends python3-virtualenv libffi-dev libssl-dev

# Install requirements for Algo
cd algo
python3 -m virtualenv --python="$(command -v python3)" .env &&
source .env/bin/activate &&
python3 -m pip install -U pip virtualenv &&
python3 -m pip install -r requirements.txt

# Modify the configuration file
nano config.cfg

# Run Algo
./algo