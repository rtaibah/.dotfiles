#
# ~/.bashrc
#

platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='osx'
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ $platform == 'linux' ]]; then
   alias ls='ls --color=auto'
elif [[ $platform == 'osx' ]]; then
   alias ls='ls'
fi

PS1='[\u@\h \W]\$ '

# >>>>BEGIN ADDED BY CNCHI INSTALLER<<<< #
BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/vim
# >>>>>END ADDED BY CNCHI INSTALLER<<<<< #

# Start i3
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# Source fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Source Aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Gnome-terminal Solarized Colors
if [[ $platform == 'linux' ]]; then
	eval `dircolors ~/.dir_colors/dircolors`
fi

## Display git location in bash. Based on https://github.com/jimeh/git-aware-prompt ##
export GITAWAREPROMPT=~/.dotfiles/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] "# Git location

# Flutter
export PATH=`pwd`/flutter/bin:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
