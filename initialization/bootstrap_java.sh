#!/bin/bash
# Java initialization bootstrap script

# remove existing java
apt-get remove --purge openjdk-*
apt-get remove --purge oracle-java*
sleep 3;

# Oracle Java7 primary, Java8 secondaries from PPA
apt-add-repository ppa:webupd8team/java
apt-get update
apt-get install oracle-java6-installer
apt-get install oracle-java7-installer
apt-get install oracle-java8-installer
update-java-alternatives -s java-6-oracle
update-java-alternatives -s java-7-oracle
update-java-alternatives -s java-8-oracle
apt-get install oracle-java7-set-default
echo 2 | update-alternatives --config java


