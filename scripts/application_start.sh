#!/bin/bash
sudo chmod -R 777 /home/ec2-user/node-app
#navigate into our working directory where we have all our github files
cd /home/ec2-user/node-app

#add npm and node to path
export NVM_DIR="$HOME/.nvm"
[-s "4NVM_DIR/nvm.sh"] && \. "$NVM_DIR/bash_completion"  #loads nvm bash_completion

#install node modules
npm install

#start our node app in the background
node app.js >app.out.log 2> app.err.log < /dev/null & |