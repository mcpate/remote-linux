#!/bin/bash
# Dependencies: Python, pip
# Questions: how do I verify dependencies and if not found abort?
LOG=~/installs.txt

#numpy. This should probably take advantage of pip
sudo pip3 install numpy

#pyproj
sudo pip3 install pyproj
echo "numpy and pyproj installed" >> $LOG

#openjpeg
sudo apt-get install -y libopenjpeg-dev

#cmake (to be able to make openjepg below)
sudo apt-get install -y cmake
echo "libopenjepg-dev and cmake installed" >> $LOG

#GRIB
cd ~/Downloads 
wget https://software.ecmwf.int/wiki/download/attachments/3473437/grib_api-1.10.4.tar.gz?api=v2 
tar xvfz grib_api-1.10.4.tar.gz\?api\=v2  
cd grib_api-1.10.4
export CFLAGS="-O2 -fPIC"
sudo ./configure 
sudo make 
sudo make check 
sudo make install 
echo "grib_api installed" >> $LOG

#pygrib
sudo pip3 install pygrib
echo "pygrib installed" >> $LOG

#If you start the python interpreter and try to "import pygrib" you should get an error because
#the shared library "libgrib_api-1.10.4.so" can't be found.  It is installed in usr/local/lib, 
#therefore solution is making a symbolic link in usr/lib so python can find it.
cd /usr/lib
sudo ln -sb /usr/local/lib/libgrib_api-1.10.4.so .
