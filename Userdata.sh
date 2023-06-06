#!/bin/bash
sudo yum update -y && sudo yum install -y
echo 'This is the Corleones'
sudo yum install git -y
sudo amazon-linux-extras enable epel-release -y
sudo amazon-linux-extras install ansible -y

mkdir logs && cd logs
touch log1
