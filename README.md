dotfiles
=========

My dotfiles files

_Note: Commands with a `:` ahead of them denote vim commands_

# INSTALLATION 

Clone the repository to your home directory:

    git clone git@github.com:rtaibah/.dotfiles.git
    

Symlink these

    ln -s ~/.dotfiles/.vimrc ~/.vimrc && ln -s ~/.dotfiles/.vim ~/.vim && ln -s ~/.dotfiles/.bashrc ~/.bashrc && ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf && ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases

Install vim-plug

	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Install plugins

	:PlugInstall


## git-aware-prompt

	cd ~/.dotfiles
	git clone git://github.com/jimeh/git-aware-prompt.git

## YouCompleteMe

### Mac

	cd ~/.vim/bundle/YouCompleteMe
	./install.py --all
	:YcmRestartServer

### Linux

	sudo apt-get install build-essential cmake
	sudo apt-get install python-dev python3-dev
	cd ~/.vim/bundle/YouCompleteMe
	./install.py --all
	:YcmRestartServer

