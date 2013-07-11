#!/bin/bash
# Simple setup.sh for basic Ubuntu instance.  Includes barebones requirements.

sudo apt-get update

sudo apt-get -y upgrade

sudo apt-get install -y vim

sudo apt-get install -y openssh-server

# git pull and install dotfiles
cd $HOME
if [ -d ./dotfiles/ ]; then
  mv dotfiles dotfiles.old
fi
if [-d ./.vim/ ]; then
  mv .vim .vim.old
fi
git clone https://github.com/mcpate/dotfiles.git
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.vimrc
cp dotfiles/.vim .
