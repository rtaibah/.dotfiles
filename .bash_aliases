###############################################################################
# bash_aliases.sh
# Useful bash aliases
###############################################################################

###############################################################################
# Shorthand
###############################################################################
alias c='clear'
alias g='grep'
alias xx="exit"


# Search history
alias h="history | grep"
# Search processes
alias p='ps aux |grep '
#open any file or folder with default app
alias o='xdg-open '
# Readable path
alias path='echo -e ${PATH//:/\\n}'
#python calculator
alias pc='python -i -Qnew -c "from math import *"'
# ping
alias ping="ping -c 3"
# sudo
alias !="sudo"
# mount apple partition
alias apple="sudo mount -t hfsplus -o force,rw /dev/sda2 /media/rtaibah/apple/"
# unmount apple partition
alias uapple="sudo umount /media/rtaibah/apple"
# todo.txt alias
alias t="c && ~/.todo/todo.sh"
# Whats My IP
alias i='ifconfig eth1 | grep "inet addr" | cut -d: -f2 | awk "{print \$1}"'


# Display IP Address for Vagrant VM.
alias i='ifconfig eth1 | grep "inet addr" | cut -d: -f2 | awk "{print \$1}"' 

# Change Screen resolutionso
# TODO: These resolutions are from my rMBP, find a way to extract actual resolutions from the xrandr command

alias res1='xrandr -s 2880x1800'
alias res2='xrandr -s 1920x1200'
alias res3='xrandr -s 1920x1200'
alias res4='xrandr -s 1600x1200'
alias res5='xrandr -s 1680x1050'
alias res6='xrandr -s 1400x1050'

###############################################################################
# Listing
###############################################################################
# List normal files
alias l='ls -lh'
# List everything, including hidden files
alias ll='ls -hal'
# List everything, by reverse date
alias lld='ls -thral'

###############################################################################
# Changing directories
###############################################################################

# Correct simple cd spelling mistakes
shopt -s cdspell

# Shorthand navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

###############################################################################
# Git
###############################################################################
# Removing the -b flag
# It isn't supported until Git 1.7.2 which isn't common in CentOS and other
# Linux rpms just yet. So, removing this makes this bash profile a bit more
# portable for now.
# alias gs='git status -sb'
alias gs='git status -s'

alias gc='git commit -v'
alias ga='git add'
alias gap='git add -p'
alias gaa='git add -A'
alias gco='git checkout'
alias gl='git log --oneline --decorate'
alias gd='git diff'
alias gdt='git difftool'
alias gps='git push'
alias gpsm='git push origin master'
alias gpsmt='git push origin master --tags'
alias gpsd='git push origin develop'
alias gpl='git pull'
alias gplm='git pull origin master'
alias gpld='git pull origin develop'
alias gf='git fetch'
alias gb='git branch'
alias gba='git branch -a -v -v'
alias gun='git reset --hard HEAD' # Unstage added changes

###############################################################################
# Apt
###############################################################################
#

alias apt-update='sudo apt-get update' 
alias apt-upgrade='sudo apt-get upgrade' 
alias apt-install='sudo apt-get install' 
alias apt-remove='sudo apt-get remove' 
alias apt-purge='sudo apt-get purge' 
alias apt-search='apt-cache search' 
alias apt-show='apt-cache show' 
alias apt-autoclean='sudo apt-get autoclean' 
alias apt-autoremove='sudo apt-get autoremove' 

###############################################################################
# Vim 
###############################################################################

alias v='vim'
alias vinst='vim +PluginInstall +qall'

###############################################################################
# Vagrant
###############################################################################

alias vup='vagrant up' 
alias vh='vagrant halt' 
alias vp='vagrant provision' 
alias vd='vagrant destroy' 
alias vs='vagrant ssh' 

#Other
alias 'make_me_a_sandwich'='echo "What? Make it yourself"'
alias 'sudo_make_me_a_sandwich'='echo "ok"'
alias emacs='echo "emacs sucks " && sleep 2 && vim'

###############################################################################
# Music
###############################################################################

alias defcon='mplayer http://ice1.somafm.com/defcon-128-mp3'
alias groove='mplayer http://ice1.somafm.com/groovesalad-128-mp3'
alias lush='mplayer http://ice1.somafm.com/lush-128-mp3' 
alias space='mplayer http://ice1.somafm.com/spacestation-128-mp3' 
alias indie='mplayer http://ice1.somafm.com/indiepop-128-mp3' 
alias cover='mplayer http://ice1.somafm.com/covers-128-mp3'

###############################################################################
# Servers 
###############################################################################

alias do1="ssh root@107.170.92.118"

###############################################################################
# Tmux 
###############################################################################

alias t-source='tmux source-file ~/.tmux.conf'

alias ace='acestream-launcher --player vlc'
