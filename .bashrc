#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
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

# Solarized Colors
eval `dircolors ~/.dir_colors/dircolors`

## Display git location in bash. Based on https://github.com/jimeh/git-aware-prompt ##
export GITAWAREPROMPT=~/.dotfiles/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] "# Git location

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

export GEM_HOME=$HOME/.gem
