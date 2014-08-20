" One .vimrc File To Rule Them All.
"
" Version: 0.8.0
" Last Change: 12-04-2014 16:39 AM GMT+3
" Author: Rami Taibah 
" Maintainer: http://rtaibah.com
" License: http://opensource.org/licenses/bsd-license.php

" @General
"
" Disable VI compatibility mode.
set nocompatible

" @Theme
" if has('gui_running')
	" Desert is a nice color scheme but I should really explore my options.
"	 colorscheme desert
	
	" Override the columns and lines in the .gvimrc file if need be for each different computer based on its screen resolution.
"	 set columns=170 lines=60
"	 set guioptions=ac
" else
	 " Need to pick a decent color scheme for the Terminal that works across most of them.
"	 colorscheme default
" endif

" Highlight matching bracket.
set showmatch

" Add line numbers
:set number

" When there is a previous search pattern, highlight all its matches.
set hlsearch

" Use incremental search (find as you type).
set incsearch

" Make searches case-insensitive, unless they contain upper-case letters.
set ignorecase smartcase

"Show the line and column number of the cursor position and the %progress through file.
set ruler

" Show the current command in the lower right corner.
set showcmd

" Show the current mode.
set showmode

" Keep at least 3 line around the cursor.
set scrolloff=3

" Always show a status line.
set laststatus=2

" @Text Formatting

" No tabs, just spaces!
set autoindent shiftwidth=4 softtabstop=4

" Expand <Tab> with space.
set expandtab

" Just so that files with tabs can be displayed properly.
set tabstop=8

" Use existing indents for new indents.
set copyindent


" @Mappings

" Remap jj to escape in insert mode as its unlikely I will ever need to type jj and its much faster then hitting the <Esc> key.
inoremap jj <Esc>

" NERDTree Mapping
map <C-n> :NERDTreeToggle<CR>

" Pathogen load
execute pathogen#infect()
syntax on
filetype plugin indent on
