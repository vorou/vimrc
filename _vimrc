" ui lang
language messages en

" https://github.com/mattn/gist-vim/issues/48
set shell=cmd
set shellcmdflag=/c

" initial part
set nocompatible
set backspace=indent,eol,start
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
map Q gq
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
if has('mouse')
    set mouse=a
endif
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif

source $VIMRUNTIME/mswin.vim
behave mswin

" vundle
filetype off
set rtp+=$VIM/vimfiles/bundle/vundle/
call vundle#rc('$VIM/vimfiles/bundle/')

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdcommenter'
Bundle 'bling/vim-airline'
Bundle 'maximize.dll'
Bundle 'kien/ctrlp.vim'
Bundle 'PProvost/vim-ps1'
Bundle 'altercation/vim-colors-solarized'

filetype off
filetype plugin indent on

" portability
set viminfo='1000,n$VIM/vimfiles/_viminfo

"  hide everything except statusline
set guioptions=
set laststatus=2

" appeareance
set background=dark
colorscheme solarized
set guifont=Inconsolata-dz\ for\ Powerline:h15
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1

" long history
set history=1000
set nowrap

" line numbers
set number

" searching/autocompletion
set ignorecase
set smartcase
set incsearch
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_map = '<C-N>'

" keys
let mapleader = ','

" encoding
set encoding=utf-8

" refresh
set autoread

" disable backup & swap files
set nobackup
set noswapfile

" dev
nnoremap gr gd[{V%:s/<C-R>///gc<left><left><left>

" indent
set expandtab
set shiftwidth=4
set softtabstop=4

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-w> :tabclose<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
inoremap <C-w> :tabclose<CR>
