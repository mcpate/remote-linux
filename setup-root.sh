#!/bin/bash
# Simple setup.sh for basic Ubuntu instance.  Includes barebones requirements.

sudo apt-get update

sudo apt-get -y upgrade

sudo apt-get install -y vim

sudo apt-get install -y openssh-server

sudo apt-get install -y byobu

#This includes C compiler among other things
sudo apt-get install -y build-essential

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
ln -sb dotfiles/.vim .
