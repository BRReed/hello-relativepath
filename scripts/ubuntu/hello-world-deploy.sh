#!/bin/sh

if ( dpkg -l | grep npm ) && ( dpkg -l | grep node )
then
  echo "npm and node are in packages list"
else
  echo "cannot find npm or node in packages list, updating package list"
  sudo DEBIAN_FRONTEND=noninteractive apt update
fi

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

if ( npm ls )
then
  echo "Dependencies have been installed"
else
  echo "Installing dependencies"
  npm install
fi

if ( lsof -i:3000 ) && ( lsof -i:8080 )
then
  echo "hello-world and second-app are running"
else
  echo "Starting hello-world and second-app"
  npm start
fi