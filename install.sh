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

ln -s `pwd`/mbsyncrc $HOME/.mbsyncrc
ln -s `pwd`/ical2org.awk $HOME/bin/ical2org


echo "Install calendar sync daemon"
mkdir -p ~/Library/LaunchAgents
cp launchd.google-calendar-sync.plist ~/Library/LaunchAgents/launchd.google-calendar-sync.plist
launchctl load -w ~/Library/LaunchAgents/launched.google-calendar-sync.plist

echo "Restart bash or source the bashrc to get all changes"
