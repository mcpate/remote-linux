#!bin/bash

#java
sudo apt-get install -y openjdk-7-jre

#scala
cd ~/Downloads
wget http://www.scala-lang.org/downloads/distrib/files/scala-2.10.2.tgz
tar xvf scala-2.10.2.tgz
cd scala-2.10.2

#lift
wget https://github.com/lift/lift_25_sbt/tarball/master
tar xvfz lift-lift_25_sbt-b67dc62.tar.gz
cd lift-lift_25_sbt-b67dc62/scala_29/lift_basic
./sbt





