#!/usr/bin/bash
if [[ -z $HOME ]]; then
 echo "Home path not found!"
 return 1
fi

CONFIGURATION_PATH="$(cd -- $(dirname $BASH_SOURCE) && pwd)"
TARGET_PATH=$HOME/.config/nvim
exec 2>> "$CONFIGURATION_PATH/installation.log"

echo "Cloning configuration files"

mkdir -p $TARGET_PATH
ln -s $CONFIGURATION_PATH/*.lua $TARGET_PATH
