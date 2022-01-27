#!/bin/sh -ex
#
#
#
#
#######################################
      
echo "Installing System Packages"
sudo apt-get update && sudo apt-get -y install software-properties-common



echo "Installing Docker-Compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Adding Vault repo"
sudo curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

echo "Install Vault binary with apt"
sudo apt-get update && sudo apt-get install vault -y 

echo "Completed Vault Installation"
