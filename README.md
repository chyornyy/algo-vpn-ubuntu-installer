# [Algo VPN](https://github.com/trailofbits/algo) Ubuntu Installer
This script automates the installation and configuration of [Algo VPN](https://github.com/trailofbits/algo) server. Algo is a self-hosted personal VPN server that offers excellent security and privacy for all devices connected to it.

## Dependencies
This script is written in bash and requires the following dependencies:
```
git
python3-pip
python3-virtualenv
libffi-dev
libssl-dev
```

## Installation
To install and configure the Algo VPN server using this script, follow these steps:

Clone the repository to your local machine:
```
git clone https://github.com/chyornyy/algovpn-ubuntu-installer.git
```
Run the script as root:
```
sudo ./setup.sh
```

Also you can create and run script without cloning the whole repistory:
Create script:
```
nano setup.sh
```
Copy-paste source code:
```
https://github.com/chyornyy/algovpn-ubuntu-installer/blob/main/setup.sh
```

Make the script executable:
```
chmod +x setup.sh
```
Run the script as root:
```
sudo ./setup.sh
```



Follow the prompts and answer the questions to configure the VPN server.
Once the script completes, copy the VPN configuration files to your local machine using the following command:
```
mkdir algovpn-keys
scp -r ubuntu@13.49.183.154:/home/ubuntu/algo/configs/13.49.183.154/wireguard/ algovpn-keys
```

## Usage

To use the Algo VPN server, simply connect to it using the generated configuration files on your device. For more information on how to connect to the VPN server, refer to the [Algo VPN](https://github.com/trailofbits/algo/tree/master/docs) documentation.