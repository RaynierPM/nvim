#!/bin/bash
if [[ -z $HOME ]]; then
 echo "Home path not found!"
 return 1
fi

CONFIGURATION_PATH="$(cd -- $(dirname $BASH_SOURCE) && pwd)"
TARGET_PATH=$HOME/.config/nvim/
# exec 2>> "$CONFIGURATION_PATH/installation.log"

if [ -d $TARGET_PATH ] && [ -n "$(ls $TARGET_PATH)" ]; then
  echo "There are files in your configuration"
  echo "Do you want to replace your configuration with this new config (Y/n):"
  read answer
  answer="${answer:0:1}"
  if [[ $answer != "y" && $answer != "Y" ]]; then
    echo "Installation failed: User cancelled the action"
    exit 1
  fi

  rm -r "$TARGET_PATH"
fi

echo "Cloning configuration files..."

mkdir -p $TARGET_PATH
# ln -s $CONFIGURATION_PATH/*.lua $TARGET_PATH
rsync -av --exclude=".git*" --exclude="*.sh" "$CONFIGURATION_PATH/" $TARGET_PATH
