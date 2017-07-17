#!/bin/bash -e

echo "================ Installing oracle-java9-installer ================="
#echo oracle-java9-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java9-installer
#sudo update-alternatives --config java

update-alternatives --set java /usr/lib/jvm/java-9-oracle/bin/java
update-alternatives --set javac /usr/lib/jvm/java-9-oracle/bin
update-alternatives --set javaws /usr/lib/jvm/java-9-oracle/bin
echo 'export JAVA_HOME=/usr/lib/jvm/java-9-oracle' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/lib/jvm/java-9-oracle/jre/bin' >> $HOME/.bashrc
