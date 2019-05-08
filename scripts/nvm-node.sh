#!/bin/bash

#Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | zsh

#Refresh after PATH update
zsh

#Install latest version of node

nvm install node
