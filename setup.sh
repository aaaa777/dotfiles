#!/bin/bash

# check root
if [ "root" = "$(whoami)" ]; then
  SUDO="sudo"
fi

# copy dotfiles
echo "setting .bash_*"
if [ -e "~/.bash_aliases" ]; then
  cat .bash_aliases >> ~/.bash_aliases
else
  cp -p .bash_aliases ~/
fi

if [ -e "~/.bash_profile" ]; then
  cat .bash_profile >> ~/.bash_profile
else
  if [ -e "~/.profile" ]; then
    cp -p ~/.profile ~/.bash_profile
    cat .bash_profile >> ~/.bash_profile
  else
    cp -p .bash_profile ~/
  fi
fi

if [ -e "~/.bashrc" ]; then
  cat .bashrc >> ~/.bashrc
else
  cp -p .bashrc ~/
fi

# configure git
git config --global core.autocrlf input
git config --global user.name aaaa777
git config --global user.email aaaa777@users.noreply.github.com

# install github-cli
echo "checking github-cli"
if [ -z "$(which gh)" ]; then
  $SUDO apt update && $SUDO apt install gh && gh auth login
fi

# apply sources
if [ -e "~/.bash_profile" ]; then
  . ~/.bash_profile
elif [ -e "~/.profile" ]; then
  . ~/.profile
fi
