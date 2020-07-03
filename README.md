dotfiles
=========

My dotfiles files

_Note: Commands with a `:` ahead of them denote vim commands_

# INSTALLATION 

Clone the repository to your home directory:

    git clone git@github.com:rtaibah/.dotfiles.git
    

Initializing Submodules & Updating

	git submodule init
	git submodule update

Install vim-plug

	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Install vim-plug for neovim

	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

Install plugins

	:PlugInstall


## Tmux

	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

Install plugins in .tmux.conf by pressing `prefix` + <kbd>I</kbd>
