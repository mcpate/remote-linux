#!/bin/bash
# Questions: how to I track exit status?
#            how do I exit if an install fails?

ID=~/Downloads
LOG=~/installs.txt

cd $ID

#Python 
sudo apt-get install -y python3.3-dev

#pip
sudo apt-get install -y python3-pip

echo "python3.3-dev and pip installed" >> $LOG
