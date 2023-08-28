#!/bin/sh

echo "-> Updating system"
yes | pacman -Syu

if ! ( which npm )
then
  echo "-> Installing nodejs and npm"
  yes | pacman -S nodejs npm
fi