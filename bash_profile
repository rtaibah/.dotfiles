# Make zsh shut up on OSX
export BASH_SILENCE_DEPRECATION_WARNING=1

# Read bashrc
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH="/usr/local/opt/ruby/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
