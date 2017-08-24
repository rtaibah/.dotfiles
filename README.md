dotfiles
=========

My dotfiles files

# INSTALLATION 

Clone the repository to your home directory:

    git clone git@github.com:rtaibah/.dotfiles.git
    

Symlink these

    ln -s ~/.dotfiles/.vimrc ~/.vimrc && ln -s ~/.dotfiles/.vim ~/.vim && ln -s ~/.dotfiles/.bashrc ~/.bashrc && ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

Install vim-plug

	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


:PlugInstall to install plugins.
