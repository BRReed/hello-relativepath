#!/bin/sh

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

npm install express
