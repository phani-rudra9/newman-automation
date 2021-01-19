#!/bin/bash
sudo apt-get update -y 
wget https://releases.hashicorp.com/terraform/0.14.2/terraform_0.14.2_linux_amd64.zip
sudo apt install unzip
unzip terraform_0.14.2_linux_amd64.zip
ls
sudo mv terraform /usr/bin/