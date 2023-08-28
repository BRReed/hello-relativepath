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
  yes | pacman -S nodejs
fi