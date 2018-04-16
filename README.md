dotfiles
=========

My dotfiles files

_Note: Commands with a `:` ahead of them denote vim commands_

# INSTALLATION 

Clone the repository to your home directory:

    git clone git@github.com:rtaibah/.dotfiles.git
    

Symlink these

    ln -s ~/.dotfiles/.vimrc ~/.vimrc && \
    ln -s ~/.dotfiles/.vim ~/.vim && \
    ln -s ~/.dotfiles/.bashrc ~/.bashrc &&  \
    ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf && \
    ln -s ~/.dotfiles/.tmux ~/.tmux && \
    ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases \
    ln -s ~/.dotfiles/.tern-config ~/.tern-config

Initializing Submodules

	git submodule init
	git submodule update

Install vim-plug

	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Install plugins

	:PlugInstall


## YouCompleteMe

	cd ~/.vim/plugged/YouCompleteMe
	./install.py --all
	:YcmRestartServer

See [YCM documentation](https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64) if you face issues.

## Tmux

	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

Install plugins in .tmux.conf by pressing `prefix` + <kbd>I</kbd>
