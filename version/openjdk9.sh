#!/bin/bash -e

echo "================ Installing openjdk-9-jdk ================="
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update
apt-get install -y openjdk-9-jdk
sudo apt-get remove openjdk-9-jdk-headless
