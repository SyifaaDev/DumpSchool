#!/usr/bin/env bash

# Update and Upgrade
pkg update -y
yes | pkg upgrade

# Install Depencies
pkg install curl -y
pkg install nodejs-lts -y
pkg install git -y

# Setup
cd $HOME
node $HOME/DumpSchool/dumpdb.js
