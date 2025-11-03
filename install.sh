#!/usr/bin/bash
if [[ -z $HOME ]]; then
 echo "Home path not found!"
 return 1
fi

CONFIGURATION_PATH="$(cd -- $(dirname $BASH_SOURCE) && pwd)"
echo "${BASH_SOURCE[0]}"
echo "Config file: $CONFIGURATION_PATH"

echo "Cloning configuration files"
echo "$CONFIGURATION_PATH/*"
mkdir $HOME./config/nvim -p 2>> installation.log
ln -s "$CONFIGURATION_PATH/*" $HOME/.config/nvim 2>> installation.log

