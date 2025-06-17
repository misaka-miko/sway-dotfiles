#!/bin/bash
 
configDir="${HOME}/.config"
projectDir="${HOME}/dotfiles"
projectConfDir="${HOME}/dotfiles/.config"


choice=$1
case "$choice" in "--upload")
  echo "Your choice is upload"
  if [ ! -d $projectDir ]; then 
    echo "Your dotfiles repo is not found!!"
    exit 1
  else
    echo "Found your dotfiles repo, waiting for sync..."
  fi
  ;;
"--download")
  echo "Your choice is download"
   
  ;;
*)
  echo "Invalid argument!!"
  exit 1
  ;;
esac
  
