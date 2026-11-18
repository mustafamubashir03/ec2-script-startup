#!/bin/bash
exec > /var/log/user-data.log 2>&1
# Update ubuntu machine
sudo apt update -y
# Install nodejs
sudo apt install nodejs -y
# Install npm
sudo apt install npm -y

# Clone repository
git clone https://github.com/mustafamubashir03/elb-devops.git /home/ubuntu/project
# Change directory to project
cd /home/ubuntu/project
# Install packages
sudo npm install
# Server start
sudo npx pm2 start index.js
