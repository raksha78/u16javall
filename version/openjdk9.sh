#!/bin/bash -e

echo "================ Installing openjdk-9-jdk ================="




#!/bin/bash -e

echo "================ Installing openjdk-8-jdk ================="
sudo apt install openjdk-9-jdk
sudo dpkg --configure -a
sudo dpkg -i --force-overwrite '/var/cache/apt/archives/openjdk-9-jdk_9~b114-0ubuntu1_amd64.deb'
update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac
add-apt-repository ppa:maarten-fonville/ppa
apt-get update
apt-get install icedtea-8-plugin
update-alternatives --set javaws /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/javaws
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/lib/jvm/java-8-openjdk-amd64/jre/bin' >> $HOME/.bashrc
