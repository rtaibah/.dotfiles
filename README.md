dotfiles
=========

My dotfiles files

# INSTALLATION 

Clone the repository to your home directory:

    git clone git@github.com:rtaibah/.dotfiles.git
    
Install Vundle

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Symlink these

    ln -s ~/.dotfiles/.vimrc ~/.vimrc && ln -s ~/.dotfiles/.vim ~/.vim && ln -s ~/.dotfiles/.bash_profiles ~/.bash_profiles && ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

Install Plugins in Vim

	vim +PluginInstall +qall
