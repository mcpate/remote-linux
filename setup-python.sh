#!/bin/bash

install_dir="~/Downloads"

cd install_dir

#python
wget http://python.org/ftp/python/3.3.2/Python-3.3.2.tar.bz2
tar -jxvf Python-3.3.2.tar.bz2
cd Python-3.3.2
./configure
make
make test
sudo make install

#python setuptools
cd install_dir
sudo apt-get install python-setuptools

#virtualenv
cd install_dir
wget https://pypi.python.org/packages/source/v/virtualenv/virtualenv-1.9.1.tar.gz
tar xvfz virtualenv-1.9.1.tar.gz
cd virtualenv-1.9.1
sudo python3 setup.py install

#pip
cd ..
wget https://pypi.python.org/packages/source/p/pip/pip-1.3.1.tar.gz
tar xvfz pip-1.3.1.tar.gz
cd pip-1.3.1
sudo python3 setup.py install
