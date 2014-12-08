dotfiles
=========

My dotfiles files

# VIM CONFIGURATION
Installation:

Clone the repository to your home directory:

    git clone https://github.com/rtaibah/vim-files.git

Next install the Vim plugins:

    cd .dotfiles 
    git submodule init
    git submodule update

Finally create a symlink to the .vimrc file in your home directory:

    ln -s ~/dotfiles/.vimrc ~/.vimrc
    ln -s ~/dotfiles/.vim ~/.vim

# BASH ALIASES
    ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases



