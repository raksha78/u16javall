#!/bin/bash -e

echo "================ Installing openjdk-9-jdk ================="



sudo apt-get -o Dpkg::Options::="--force-overwrite" install openjdk-9-jdk

sudo apt-get remove openjdk-9-jdk-headless
sudo add-apt-repository ppa:maarten-fonville/ppa
sudo apt-get update
sudo apt-get install icedtea-9-plugin

echo 'export JAVA_HOME=/usr/lib/jvm/jdk/bin/java-9-openjdk-amd64' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/lib/jvm/jdk/bin/java-9-openjdk-amd64/jre/bin' >> $HOME/.bashrc
