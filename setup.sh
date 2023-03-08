#!/bin/bash

# copy dotfiles
echo "setting .bash_aliases"
if [ -e "~/.bash_aliases" ]; then
  cat .bash_aliases >> ~/.bash_aliases
else
  cp -p .bash_aliases ~/
fi

# configure git
git config --global core.autocrlf input
git config --global user.name aaaa777
git config --global user.email aaaa777@users.noreply.github.com

# install github-cli
echo "checking github-cli"
if [ -z "$(which gh)" ]; then
  sudo apt update && sudo apt install gh && gh auth login
fi

# apply sources
if [ -e "~/.bash_profile" ]; then
  . ~/.bash_profile
elif [ -e "~/.profile" ]; then
  . ~/.profile
fi
