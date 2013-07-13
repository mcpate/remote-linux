#!/bin/bash
# Questions: how to I track exit status?
#	     does it matter that I do "python setup.py install" and not "python3..."?
#     

ID="~/Downloads"

cd $ID

#important python tools
sudo apt-get install -y libsqlite3-dev
sudo apt-get install -y sqlite3 # for the command-line client
sudo apt-get install -y bzip2 libbz2-dev

#python
wget http://python.org/ftp/python/3.3.2/Python-3.3.2.tar.bz2
tar -jxvf Python-3.3.2.tar.bz2
cd Python-3.3.2
./configure
make
make test
sudo make install

#python setuptools
cd $ID
sudo apt-get install -y python-setuptools

#virtualenv
cd $ID
wget https://pypi.python.org/packages/source/v/virtualenv/virtualenv-1.9.1.tar.gz
tar xvfz virtualenv-1.9.1.tar.gz
cd virtualenv-1.9.1 
sudo python setup.py install

#pip
cd $ID
wget https://pypi.python.org/packages/source/p/pip/pip-1.3.1.tar.gz
tar xvfz pip-1.3.1.tar.gz
cd pip-1.3.1
sudo python setup.py install
