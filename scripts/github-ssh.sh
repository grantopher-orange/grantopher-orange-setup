#!/bin/bash
#Only run if an email address is provided
if [[ $# -eq 0 ]] ; then 
  echo 'requires email address!'
  exit 0
fi

#Generate ssh-key

ssh-keygen -t rsa -b 4096 -C "$1"

eval $(ssh-agent -s)

ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub | clip.exe
