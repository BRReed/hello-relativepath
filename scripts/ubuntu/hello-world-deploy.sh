#!/bin/sh

sudo DEBIAN_FRONTEND=noninteractive apt update

if ( which npm )
then
  echo "-> npm is installed"
else
  echo "-> Installing npm"
  sudo apt install npm -y
fi

if ( which node )
then
  echo "-> nodejs is installed"
else
  echo "-> Installing nodejs"
  sudo apt install nodejs -y
fi

npm install

npm start