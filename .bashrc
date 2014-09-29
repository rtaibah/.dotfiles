if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export EDITOR=/usr/bin/vim

# Function to bind sopcast to vlc and automatically run stream
#function sopcast-server {(sp-sc "$1"  3900 8900 &>/dev/null &); sleep 10; vlc http://localhost:8900/tv.asf;}
#export -f sopcast-server

