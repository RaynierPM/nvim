#!/bin/bash
NVIM_PATH="$(cd -- $(dirname $BASH_SOURCE) && pwd)"

if ! command -v nvim; then 
  echo "Error: Nvim is not installed or added to the path.";
  return 1
fi

echo "Opening current nvim configuration path..."
sleep 0.3

nvim $NVIM_PATH/init.lua && "$NVIM_PATH/install.sh"
