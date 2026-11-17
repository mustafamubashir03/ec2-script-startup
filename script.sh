#!/bin/bash
exec > /var/log/user-data.log 2>&1
# Update ubuntu machine
sudo apt update
# Install nodejs
sudo apt install nodejs
# Install npm
sudo apt install npm

# Clone repository
git clone https://github.com/mustafamubashir03/elb-devops.git /home/ubuntu/project
# Change directory to project
cd /home/ubuntu/project/elb-devops
# Install packages
sudo npm install
# Server start
sudo npx pm2 start index.js
