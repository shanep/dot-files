#!/bin/bash
git submodule init
git submodule update

#install bash settings
pushd .
cd bash
source ./install.sh
popd

pushd .
cd vim
source ./install.sh
popd

git config --global user.email "shane@foundationcode.com"
git config --global user.name "Shane Panter"


echo "Restart bash or source the bashrc to get all changes"
