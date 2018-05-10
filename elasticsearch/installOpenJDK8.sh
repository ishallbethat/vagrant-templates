#!/bin/bash
apt-get update
apt-get install openjdk-8-jdk -y
if [ -e ".bash_profile" ]
then
  echo ".bash_profile exists"
  grep -q '^JAVA_HOME' .bash_profile &&  sed -i 's/^JAVA_HOME.*$/JAVA_HOME=\/usr\/lib\/jvm\/java-8-openjdk-amd64/g' .bash_profile || echo 'JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> .bash_profile
  source .bash_profile
else
  echo ".bash_profile not exists"
  echo 'JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> .bash_profile
  source .bash_profile
fi
