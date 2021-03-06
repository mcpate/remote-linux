#!/bin/bash
# Simple setup.sh for basic Ubuntu instance.  Includes barebones requirements.
# REQUIREMENTS: Git should first be installed manually so the dotfiles.git repo
# in this scirpt can be cloned.
LOG=~/installs.txt

# Create file to write completed installs to
touch $LOG

sudo apt-get update
sudo apt-get -y upgrade

# This includes C compiler among other things
sudo apt-get install -y build-essential
echo "build-essential package installed" >> $LOG

sudo apt-get install -y vim
sudo apt-get install -y openssh-server
sudo apt-get install -y byobu
sudo apt-get install tree
echo "vim, openssh-server, byobu, tree installed" >> $LOG

# git pull and install dotfiles
cd Downloads
git clone https://github.com/mcpate/dotfiles.git
cd ..
ln -sb Downloads/dotfiles/.bashrc .
ln -sb Downloads/dotfiles/.bashrc_custom .
ln -sb Downloads/dotfiles/.bash_profile .
ln -sb Downloads/dotfiles/.vimrc .
ln -sb Downloads/dotfiles/.vim .
echo "dotfiles cloned, bash and vim files symlinked" >> $LOG
