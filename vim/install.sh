#!/bin/bash

#Sets up the vimrc to point to the version in your git folder
#Removes your .vim folder and any old plugins that may be there
setup() 
{
	echo "Sym linking .vim to git repo"
	ln -s `pwd` $HOME/.vim
}

#Sets up all the basic directories since we are
#using the pathogen plugin manager all we need is
#the autoload and bundle directories.
clean()
{
	if [ -e "$HOME/.vim" ] 
	then
		echo "Moving old .vim folder"
		mv $HOME/.vim $HOME/.vim_old
	fi
}
clean
setup
echo "Finished linking .vim files"
echo "--> update the help files with :Helptags"
