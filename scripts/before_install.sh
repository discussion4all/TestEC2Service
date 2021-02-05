# #!/bin/bash

# # Install node.js
# sudo apt-get install python-software-properties -y
# sudo apt-add-repository ppa:chris-lea/node.js -y
# sudo apt-get update
# sudo apt-get install nodejs -y

# # Install nodemon
# # sudo npm install nodemon -g

# # Install forever module 
# # https://www.npmjs.com/package/forever
# sudo npm install forever -g

# # Clean working folder
# # sudo find /home/ec2-user/test -type f -delete

#!/usr/bin/env bash
set -e

# update instance
yum -y update

# install general libraries like Java or ImageMagick
yum -y install default-jre ImageMagick

# add nodejs to yum
curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
yum -y install nodejs #default-jre ImageMagick

# install pm2 module globaly
npm install -g pm2
pm2 update