#!/bin/sh
if ! [ $(id -u) = 0 ]; then
   echo "File must be run as root"
   exit 1
fi

Dependencies = "pdfinfo python git"

apt update
apt install -y $Dependencies

if [ -d "$PWD"/DidierStevensSuite ]; then
  cd DidierStevensSuite/
  git remote update && git status
else
  git clone https://github.com/DidierStevens/DidierStevensSuite
fi
