#!/bin/bash

cd Downloads

#python
wget http://python.org/ftp/python/3.3.2/Python-3.3.2.tar.bz2
tar -jxvf Python-3.3.2.tar.bz2
cd Python-3.3.2
./configure
make
make test
sudo make install

#python setuptools
sudo apt-get install python-setuptools

#virtualenv
cd ..
wget https://pypi.python.org/packages/source/v/virtualenv/virtualenv-1.9.1.tar.gz
tar xvfz virtualenv-1.9.1.tar.gz
cd virtualenv-1.9.1
sudo python setup.py install

#pip
cd ..
wget https://pypi.python.org/packages/source/p/pip/pip-1.3.1.tar.gz
tar xvfz pip-1.3.1.tar.gz
cd pip-1.3.1
sudo python setup.py install

#numpy. This should probably take advantage of pip
sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

#pyproj
cd ..
wget https://pyproj.googlecode.com/files/pyproj-1.9.3.tar.gz
tar xvfz pyproj-1.9.3.tar.gz
cd pyproj-1.9.3
sudo python setup.py install

#jasper
#wget http://www.ece.uvic.ca/~frodo/jasper/software/jasper-1.900.1.zip
#unzip jasper-1.900.1.zip
#cd jasper-1.900.1
#sudo ./configure
#sudo make
#sudo make install

#cmake (to be able to make openjepg below)
sudo apt-get install -y cmake

#openjpeg
wget https://openjpeg.googlecode.com/files/openjpeg-2.0.0.tar.gz
tar xvfz openjpeg-2.0.0.tar.gz
cd openjpeg-2.0.0
cmake .
make
sudo make install

#GRIB
cd ..
wget https://software.ecmwf.int/wiki/download/attachments/3473437/grib_api-1.10.4.tar.gz?api=v2
tar xvfz grib_api-1.10.4.tar.gz\?api\=v2 
cd grib_api-1.10.4
mkdir /usr/local/grib_api_dir
./configure --prefix=/usr/local/grib_api_dir
make
make check
sudo make install

make install
sudo python setup.py install
