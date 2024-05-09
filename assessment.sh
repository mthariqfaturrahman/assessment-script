#! /bin/bash

echo "setting timezone"
sudo timedatectl set-timezone Asia/Jakarta

echo "update && upgrade packages"
sudo apt-get update && sudo apt-get upgrade -y

echo "install git, curl, python, etc."
sudo apt-get install git curl zip unzip python3 python3-pip -y

echo "install docker"
sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get update
sudo apt install docker-ce -y
