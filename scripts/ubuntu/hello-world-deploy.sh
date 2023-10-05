#!/bin/sh

export DEBIAN_FRONTEND=noninteractive

apt update

if ( which npm )
then
  echo "-> npm is installed"
else
  echo "-> Installing npm"
  apt install npm -y
fi

if ( which node )
then
  echo "-> nodejs is installed"
else
  echo "-> Installing nodejs"
  apt install nodejs -y
fi

npm install

npm start