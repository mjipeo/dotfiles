set nocompatible


" Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'rstacruz/sparkup'
Plugin 'plasticboy/vim-markdown'
Plugin 'msanders/snipmate.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-repeat'

Plugin 'ap/vim-css-color'
Plugin 'groenewege/vim-less'

call vundle#end()
filetype plugin indent on


" Custom
" ======

" Basic
syntax enable

set ruler
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set autoindent
set copyindent
set showmatch
set smarttab
set incsearch
set title
set hlsearch
set history=1000
set undolevels=1000
set list
set listchars=tab:>-,trail:-,extends:#
set wrap
set pastetoggle=<F2>
set encoding=utf-8
set showcmd
set hidden " Controversial
set wildmenu
set wildmode=list:longest
set laststatus=2
set visualbell
set number
set relativenumber
set undofile
set ignorecase
set smartcase
set gdefault
set colorcolumn=80
set textwidth=79
"set formatoptions=qrn1
"
" Change the mapleader from \ to ,
let mapleader=","

noremap <F1> <ESC>
nnoremap j gj
nnoremap k gk
nnoremap ; :
nnoremap / /\v
vnoremap / /\v
nnoremap <tab> %
vnoremap <tab> %
nnoremap <CR> :nohlsearch<CR>
inoremap jj <ESC>

nnoremap <leader>w <C-w>v<C-w>l

" Plugin-specific
nnoremap <leader>a :Ack
"let g:vim_markdown_initial_foldlevel=1
let g:vim_markdown_folding_disabled=1

cabbrev ht tab help
cabbrev hv vert help

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linu
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Quickly edit/reload the vimrc file
nnoremap <leader>vr :vs $MYVIMRC<CR>
nnoremap <leader>sr :so $MYVIMRC<CR>

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>


" Sample for file-specific settings
" autocmd filetype python set expandtab
" autocmd filetype html,xml set listchars-=tab:>.

