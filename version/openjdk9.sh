




#!/bin/bash -e

echo "================ Installing openjdk-9-jdk ================="
sudo apt install openjdk-9-jdk
sudo dpkg --configure -a
sudo dpkg -i --force-overwrite '/var/cache/apt/archives/openjdk-9-jdk_9~b114-0ubuntu1_amd64.deb'

