#!/bin/bash

# append script to ~/.bashrc so it launches when the shell launches.
# only do this if it isn't already in bashrc
if ! grep -q "bash_settings\.sh" ~/.bashrc
then
	echo "Appending bash_settings.sh to ~/.bashrc..."
	echo ". `pwd`/bash_settings.sh" >> $HOME/.bashrc
fi

#setup basic git prompt
if ! grep -q "git-prompt.sh" ~/.bashrc
then
	echo "Appending git-prompt to ~/.bashrc..."
	echo ". `pwd`/git-prompt.sh" >> $HOME/.bashrc
fi

#configure zsh shell

if [ ! -f "$HOME/.zprofile" ]
then
	ln -s $HOME/.bashrc $HOME/.zprofile
fi

echo "Bash settings complete"

