#!bin/bash
#download npode and npm
curl -o-https://raw.githubsercontent.com/nvm-sh/nvm/v0.34.0/install.sh |bash
. ~/.nvm/nvm.sh
nvm install node

#create our working directory if it doesn't exist
DIR ="/home/ec2-user/node-app"
if [-d "$DIR"]; then
  echo "${DIR} exists"
else 
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi

