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

BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/vim

# Start i3
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# Source fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Source Aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

## Display git location in bash. Based on https://github.com/jimeh/git-aware-prompt ##
export GITAWAREPROMPT=~/.dotfiles/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

export GEM_HOME=$HOME/.gem

export ANDROID_HOME=/home/user_directory/Android/Sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
#export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
