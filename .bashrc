if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Colors
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

## Display git location in bash. Based on https://github.com/jimeh/git-aware-prompt ##
export GITAWAREPROMPT=~/.dotfiles/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] "# Git location

# Prompt for sudo -s
#export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "
#
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
