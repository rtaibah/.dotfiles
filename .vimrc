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
set encoding=utf-8

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

" PEP8 Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" Other Indentation
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" Flag Unnecessary Whitspace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Expand <Tab> with space.
set expandtab

" Just so that files with tabs can be displayed properly.
set tabstop=4

" Use existing indents for new indents.
set copyindent


" @Mappings

" Remap jj to escape in insert mode as its unlikely I will ever need to type jj and its much faster then hitting the <Esc> key.
inoremap jj <Esc>

" NERDTree Settings
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Pathogen load
execute pathogen#infect()

syntax on
filetype plugin indent on


" @Window Movement and Management

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

" Move up and down within a single line that's word-wrapped 
nnoremap j gj
nnoremap k gk

" Folding
set foldmethod=indent
set foldlevelstart=99

" Enable folding with the spacebar
nnoremap <space> za

" Enable simplyfold plugin
" https://github.com/tmhedberg/SimpylFold
let g:SimpylFold_docstring_preview = 1

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

"Add a color column
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" YouCompleteMe Configs
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

let python_highlight_all=1

"Color scheme
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif
