set nocompatible


" Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'

Plugin 'skammer/vim-css-color'
Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'

call vundle#end()
filetype plugin indent on


" Custom
" ======

syntax enable
set number

" change the mapleader from \ to ,
let mapleader=","

"syntax enable
"
"set nu
"set ruler
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4
"set expandtab
"set autoindent
"set incsearch
"set hlsearch
"set backspace=indent,eol,start
"
"set list
"set listchars=tab:>-,trail:-
"
"map <C-J> <C-W>j
"map <C-K> <C-W>k
"map <C-H> <C-W>h
"map <C-L> <C-W>l
"
"nnoremap tl :tabnext<CR>
"nnoremap th :tabprev<CR>
"nnoremap tn :tabnew<CR>

