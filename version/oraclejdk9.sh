#!/bin/bash -e

echo "================ Installing oracle-java9-installer ================="
#echo oracle-java9-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java9-installer

echo 'export JAVA_HOME=/usr/lib/jvm/java-9-oracle' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/lib/jvm/java-9-oracle/jre/bin' >> $HOME/.bashrc
