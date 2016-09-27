dotfiles
=========

My dotfiles files

# INSTALLATION 

Clone the repository to your home directory:

    git clone git@github.com:rtaibah/.dotfiles.git

Symlink these

    ln -s ~/.dotfiles/.vimrc ~/.vimrc && ln -s ~/.dotfiles/.vim ~/.vim && ln -s ~/.dotfiles/.bash_profiles ~/.bash_profiles && ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

Install Plugins in Vim

    vim +PluginsInstall +qall
