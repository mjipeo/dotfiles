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
Plugin 'msanders/snipmate.vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-repeat'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'justinmk/vim-sneak'
"Plugin 'myusuf3/numbers.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-signify'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'davidhalter/jedi-vim'
"Plugin 'ervandew/supertab'

Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'ap/vim-css-color'
Plugin 'groenewege/vim-less'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on


" Custom
" ======

" Basic
syntax enable

" Colorscheme
"set t_Co=256
"set t_Co=16
"let g:solarized_termcolors=16
let g:solarized_termcolors=256
"let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

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
"nnoremap <CR> :nohlsearch<CR>
nnoremap <leader><space> :nohlsearch<CR>
"inoremap jj <ESC>

" Plugin-specific
nnoremap <leader>aa :Ag 
nnoremap <leader>as :Ag <cfile><CR>
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
let g:airline_theme='bubblegum'
let g:airline_left_sep=''
let g:airline_right_sep=''

" Nerdtree
"map <C-e> <plug>NERDTreeTabsToggle<CR>
"map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>nn :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

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
set wildignore+=*.so,*.swp,*.zip,*.pyc
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/]\.(git|hg|svn)$',
  "\ 'file': '\v\.(exe|so|dll)$',
  "\ 'link': 'some_bad_symbolic_links',
  "\ }
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$',
    \ 'file': '\.so$\|\.pyc$' }
"let g:ctrlp_map = '<leader>c'
nnoremap <leader>b :CtrlPBuffer<CR>

"Tabular
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:<CR>
vmap <Leader>t: :Tabularize /:<CR>
nmap <Leader>t, :Tabularize /,<CR>
vmap <Leader>t, :Tabularize /,<CR>

"Indent-guides
" let g:indent_guides_auto_colors = 0
autocmd filetype python,javascript,html :IndentGuidesEnable
let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermfg=none ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermfg=none ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermfg=none ctermbg=235
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Jedi
let g:jedi#use_tabs_not_buffers = 0
"let g:jedi#use_splits_not_buffers = "right"
let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>jg"
let g:jedi#goto_definitions_command = "<leader>jd"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>jn"
let g:jedi#rename_command = "<leader>jr"
"let g:jedi#completions_command = "<C-Space>"
let g:jedi#completions_command = "<C-k>"
let g:jedi#show_call_signatures = "1"

" Surround
"let b:surround_{char2nr("v")} = "{{ \r }}"
"let b:surround_{char2nr("{")} = "{{ \r }}"
"let b:surround_{char2nr("%")} = "{% \r %}"
"let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
"let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
"let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
"let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
"let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"

" Syntastic
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=0
let g:syntastic_auto_jump=1
let g:syntastic_check_on_wq=0
let g:syntastic_error_symbol = 'e'
let g:syntastic_warning_symbol = 'w'
"let g:syntastic_csslint_options = "--ignore=ids"
nnoremap <leader>sr :SyntasticReset<CR>
nnoremap <leader>sc :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" Signify
let g:signify_vcs_list = ['git']

"""""""""""
"""""""""""

set scrolloff=3

cabbrev ht tab help
cabbrev hv vert help

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

noremap H ^
noremap L g_

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

"""""""" some helpful abbreviations
iab <expr> dts strftime("%m/%d/%y")
iab <expr> ymd strftime("%Y-%m-%d")
iab <expr> ymdt strftime("%Y-%m-%d %H:%M")

" Sample for file-specific settings
" autocmd filetype python set expandtab
" autocmd filetype html,xml set listchars-=tab:>.

" don't use cindent for javascript
"autocmd FileType javascript setlocal nocindent

" Local config
if filereadable(".vimrc.local")
  source .vimrc.local
endif

