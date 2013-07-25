#!bin/bash

#create ~/Downloads ?
if [ ! -d "~/Downloads" ]; then
  mkdir ~/Downloads
fi

#java
sudo apt-get install -y openjdk-7-jre

#sbt
cd ~/Downloads
wget http://scalasbt.artifactoryonline.com/scalasbt/sbt-native-packages/org/scala-sbt/sbt/0.12.2/sbt.tgz
tar xvf sbt.tgz
mkdir ~/sbt
mv sbt ~/sbt
PATH=$PATH:~/sbt/sbt/bin

#scala
cd ~/Downloads
wget http://www.scala-lang.org/downloads/distrib/files/scala-2.10.2.tgz
tar xvf scala-2.10.2.tgz
mkdir ~/Scala
mv scala-2.10.2 ~/Scala
PATH=$PATH:~/Scala/scala-2.10.2/bin

#lift
cd ~/Downloads
wget https://github.com/lift/lift_25_sbt/tarball/master
tar xvf master
cd lift-lift_25_sbt-b67dc62/scala_29/lift_basic
./sbt





