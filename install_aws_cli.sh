#!/bin/bash

wget https://s3.amazonaws.com/aws-cli/awscli-bundle.zip

apt install unzip

unzip awscli-bundle.zip

sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

./awscli-bundle/install -b ~/bin/aws

./awscli-bundle/install -h

