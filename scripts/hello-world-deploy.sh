#!/bin/sh

pacman -Sy

if ( pacman -Qu )
then
  echo "-> upgrading system"
  yes | pacman -Su
else
  echo "-> system is up to date"
fi



if ( which npm )
then
  echo "-> npm is installed"
else
  echo "-> Installing npm"
  yes | pacman -S npm
fi

if ( which node )
then
  echo "-> nodejs is installed"
else
  echo "-> Installing nodejs"
  yes | pacman -S nodejs
fi

npm install

node hello-world-app.js