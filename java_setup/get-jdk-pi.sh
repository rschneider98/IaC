#!bin/bash
# Java JDK 11 comes default with raspbian, so we just run update
sudo apt update
sudo apt install default-jdk
java -version
