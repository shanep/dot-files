#Minor customizations to bash/zsh. I try to keep as stock as possible :)

#Add in bin to the path
if [[ ! ":$PATH:" == *":$HOME/bin:"* ]]; then
    PATH=$HOME/bin:$PATH
fi

#custom exports
export TERM="xterm-256color"

precmd ()
{
    __git_ps1 "%n" ":%C$ " "|(%s)"
}

#Set the prompt for both ZSH and BASH
if [ -n "$ZSH_VERSION" ]; then
	setopt PROMPT_SUBST
elif [ -n "$BASH_VERSION" ]; then
    PS1='[\u@\h:\w]\$'
	PROMPT_COMMAND='__git_ps1 "[\u@\h:\W]" "\n\$ "'
fi

#Turn on git-prompt settings
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUPSTREAM=false
GIT_PS1_DESCRIBE_STYLE=branch
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true

#Add in alias
alias ll='ls -l'
alias la='ls -l -a'
alias e='emacsclient -c -n --alternate-editor=""'

#Make ls color by default
alias ls='ls --color'

#When running mintty and cygwin/x The Display var is not
#set by default. So we need to set the display. NOTE:
#sometimes X11 running on windows has stale lock files
#located in /tmp/.X0-lock where X0
if [ $(uname) = "Cygwin" ]
then
    export DISPLAY=:0.0
fi


#Add $HOME/go/bin into the path
if [[ ! ":$PATH:" == *":$HOME/go/bin:"* ]]; then
    PATH=$HOME/go/bin:$PATH
fi

#Add $HOME/.cargo/bin into the path
if [[ ! ":$PATH:" == *":$HOME/.cargo/bin:"* ]]; then
    PATH=$HOME/.cargo/bin:$PATH
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin:$HOME/.gem/bin"
export GEM_HOME="$HOME/.gem"

# Fix for WSL bad default umask permissions
if [ "$(umask)" = "0000" ]; then
	umask 0022
fi

# Set PATH, MANPATH, etc., for Homebrew.
if [ $(uname) = "Darwin" ]
then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi
