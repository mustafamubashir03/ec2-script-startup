#!/bin/bash
# Update ubuntu machine
sudo apt update
# Install nodejs
sudo apt install nodejs
# Install npm
sudo apt install npm

# Clone repository
git clone https://github.com/mustafamubashir03/elb-devops.git
# Change directory to project
cd elb-devops
# Install packages
npm install
# Server start
npx pm2 start index.js
