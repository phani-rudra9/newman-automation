#!/bin/bash

apt install unzip

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install

aws

aws configure

AWS Access Key ID [None]: aa

AWS Secret Access Key [None]: bb

Default region name [None]: cc

Default output format [None]: json
