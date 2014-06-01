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
Plugin 'Lokaltog/vim-easymotion'
Plugin 'justinmk/vim-sneak'
Plugin 'myusuf3/numbers.vim'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'mhinz/vim-signify'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'

Plugin 'ap/vim-css-color'
Plugin 'groenewege/vim-less'
Plugin 'cakebaker/scss-syntax.vim'


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
"set hidden " Controversial
set wildmenu
set wildmode=list:longest
set visualbell
set number
"set relativenumber
set undofile
set ignorecase
set smartcase
set gdefault
set colorcolumn=80
set textwidth=79
"set formatoptions=qrn1
set formatoptions+=n
set cursorline
set nojoinspaces
set splitright
set splitbelow

" Status
set laststatus=2
set statusline=%<%f\                     " Filename
set statusline+=%w%h%m%r                 " Options
set statusline+=%{fugitive#statusline()} " Git Hotness
set statusline+=\ [%{&ff}/%Y]            " Filetype
set statusline+=\ [%{getcwd()}]          " Current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

set undodir=~/.tmp/vim/undo/
set backupdir=~/.tmp/vim/backup/
set directory=~/.tmp/vim/swap/

if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" Change the mapleader from \ to ,
let mapleader=","

noremap <F1> <ESC>
"nnoremap j gj
"nnoremap k gk
"nnoremap ; :
nnoremap Y y$
nnoremap / /\v
vnoremap / /\v
nnoremap <tab> %
vnoremap <tab> %
nnoremap <CR> :nohlsearch<CR>
inoremap jj <ESC>

" Plugin-specific
nnoremap <leader>a :Ack 
if executable("ack")
  set grepprg=ack\ -H\ --nogroup\ --nocolor\ --ignore-dir=tmp\ --ignore-dir=coverage
endif

"let g:vim_markdown_initial_foldlevel=1
let g:vim_markdown_folding_disabled=1
"let g:sneak#streak=1
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
map <SPACE> <Plug>(easymotion-s2)
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)
nnoremap <leader>tt :TagbarToggle<CR>
let g:snips_author = 'Minjong Chung<mjipeo@gmail.com>'

let g:airline#extensions#tabline#enabled=1

" Nerdtree
map <C-e> <plug>NERDTreeTabsToggle<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

" ctrlp

" Fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>ge :Gedit<CR>

" Tagbar
nnoremap <silent> <leader>tt :TagbarToggle<CR>

" Ctrlp
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$',
    \ 'file': '\.so$\|\.pyc$' }

"""""""""""
"""""""""""

set scrolloff=3

cabbrev ht tab help
cabbrev hv vert help

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linu
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Quickly edit/reload the vimrc file
nnoremap <leader>rv :vs $MYVIMRC<CR>
nnoremap <leader>rs :so $MYVIMRC<CR>

vnoremap <C-c> <Esc>

" For practicing
inoremap <Esc> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" Command mode motions
cnoremap <C-a>  <Home>
cnoremap <C-e>  <End>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_
"map <C-L> <C-W>l<C-W>_
"map <C-H> <C-W>h<C-W>_

nnoremap tn :tabnew<CR>
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tj :tabfirst<CR>
nnoremap tk :tablast<CR>
nnoremap td :tabclose<CR>

"map <S-H> gT
"map <S-L> gt

" Folding
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>

vnoremap < <gv
vnoremap > >gv

cmap w!! w !sudo tee % >/dev/null
map <Leader>= <C-w>=
nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                         \ exe "normal g'\"" | endif

" Directory
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Open URL
"command -bar -nargs=1 OpenURL :!open <args>
function! OpenURL()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;:]*')
  echo s:uri
  if s:uri != ""
      exec "!open \"" . s:uri . "\""
  else
      echo "No URI found in line."
  endif
endfunction
map <Leader>w :call OpenURL()<CR>

" Sample for file-specific settings
" autocmd filetype python set expandtab
" autocmd filetype html,xml set listchars-=tab:>.

" don't use cindent for javascript
"autocmd FileType javascript setlocal nocindent

" Local config
if filereadable(".vimrc.local")
  source .vimrc.local
endif

