#!/bin/bash

# copy dotfiles
cat .bash_aliases > ~/.bash_aliases

# install github-cli

sudo apt update && sudo apt install gh
gh auth login

