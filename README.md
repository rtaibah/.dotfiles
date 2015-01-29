dotfiles
=========

My dotfiles files

# INSTALLATION 

Clone the repository to your home directory:

    git clone git@github.com:rtaibah/.dotfiles.git

Next install the Vim plugins:

    cd .dotfiles 
    git submodule init
    git submodule update

Finally, symlink these

    ln -s ~/.dotfiles/.vimrc ~/.vimrc && ln -s ~/.dotfiles/.vim ~/.vim && ln -s ~/.dotfiles/.bash_profiles ~/.bash_profiles



