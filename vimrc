" ===================
" Basic configuration
" ===================

set nocompatible

syntax enable

let mapleader=","

set autoindent
set backspace=indent,eol,start
set backupdir=~/.tmp/vim/backup/
set colorcolumn=80
set copyindent
set cursorline
set directory=~/.tmp/vim/swap/
set encoding=utf-8
set expandtab
set formatoptions=cqnr1
set gdefault
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:>-,trail:-,extends:#
set nojoinspaces
set number
set pastetoggle=<leader>p
set relativenumber
set ruler
set scrolloff=1
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set smarttab
set softtabstop=4
set splitbelow
set splitright
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
set statusline+=%w%h%m%r                 " Options
set statusline+=%{fugitive#statusline()} " Git Hotness
set statusline+=\ [%{&ff}/%Y]            " Filetype
set statusline+=\ [%{getcwd()}]          " Current dir
set statusline=%<%f\                     " Filename
set tabstop=4
set textwidth=79
set title
set undodir=~/.tmp/vim/undo/
set undofile
set undolevels=1000
set visualbell
set wildignore+=*.o,*.out,*.obj,*.so,*.pyc
set wildignore+=*.so,*.swp,*.zip,*.pyc
set wildignore+=*.swp,*~,._*
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/.sass-cache/*
set wildmenu
set wildmode=list:longest
set wrap

function! OpenURL()
    let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;:)]*')
    echo s:uri
    if s:uri != ""
        exec "!open \"" . s:uri . "\""
    else
        echo "No URL found in line."
    endif
endfunction

map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <leader>= <C-w>=
noremap <leader>es :sp %%
noremap <leader>et :tabe %%
noremap <leader>ev :vsp %%
noremap <leader>ew :e %%
noremap <leader>w :call OpenURL()<CR>

iabbrev <expr> dts strftime("%m/%d/%y")
iabbrev <expr> ymd strftime("%Y-%m-%d")
iabbrev <expr> ymdt strftime("%Y-%m-%d %H:%M")
inoremap <C-c> <Esc>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
"inoremap <Esc> <nop>

nnoremap / /\v
nnoremap <F1> <ESC>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>de :e ~/.desk/desks<CR>
nnoremap <leader>f0 :set foldlevel=0<CR>
nnoremap <leader>f1 :set foldlevel=1<CR>
nnoremap <leader>f2 :set foldlevel=2<CR>
nnoremap <leader>f3 :set foldlevel=3<CR>
nnoremap <leader>f4 :set foldlevel=4<CR>
nnoremap <leader>f5 :set foldlevel=5<CR>
nnoremap <leader>f6 :set foldlevel=6<CR>
nnoremap <leader>f7 :set foldlevel=7<CR>
nnoremap <leader>f8 :set foldlevel=8<CR>
nnoremap <leader>f9 :set foldlevel=9<CR>
nnoremap <leader>ff :normal! gg=G``<CR>
nnoremap <leader>qa :qa<CR>
nnoremap <leader>qb :bp <BAR> bd #<CR>
nnoremap <leader>qq :q<CR>
nnoremap <leader>qw :cclose<CR>:pclose<CR>:lclose<CR>
nnoremap <leader>re :e $MYVIMRC<CR>
nnoremap <leader>rs :so $MYVIMRC<CR>
nnoremap <leader>rv :vs $MYVIMRC<CR>
nnoremap <leader>w+ :10winc +<CR>
nnoremap <leader>w- :10winc -<CR>
nnoremap <leader>w< :10winc <<CR>
nnoremap <leader>w> :10winc ><CR>
nnoremap <leader>zz :%s/\s\+$//e<CR>
nnoremap H ^
nnoremap L g_
nnoremap Y y$
nnoremap td :tabclose<CR>
nnoremap th :tabprev<CR>
nnoremap tj :tabfirst<CR>
nnoremap tk :tablast<CR>
nnoremap tl :tabnext<CR>
nnoremap tn :tabnew<CR>
"nnoremap j gj
"nnoremap k gk

vnoremap / /\v
vnoremap < <gv
vnoremap > >gv
"vnoremap <C-c> <Esc>

cabbrev ht tab help
cabbrev hv vert help
cmap cd. lcd %:p:h
cmap cwd lcd %:p:h
cnoremap %% <C-R>=expand('%:h').'/'<cr>
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-e>  <End>
cnoremap <C-f>  <Right>
cnoremap w!! w !sudo tee % >/dev/null

autocmd bufnewfile,bufread *.go set filetype=go
autocmd bufnewfile,bufread *.html set filetype=htmldjango
autocmd bufnewfile,bufread *.jinja set filetype=htmldjango
autocmd bufnewfile,bufread *.json set filetype=javascript
autocmd bufreadpost * if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal g'\"" | endif
autocmd filetype scss,javascript,css,less,html,htmldjango,htmljinja,yaml
    \ setlocal tabstop=2 shiftwidth=2 softtabstop=2


" =======
" Plugins
" =======

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Enhancement
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'rstacruz/sparkup'
Plugin 'rking/ag.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'justinmk/vim-sneak'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'sjl/gundo.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/matchit.zip'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Textobj
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'michaeljsmith/vim-indent-object'

" Snippet
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Python
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'davidhalter/jedi-vim'
Plugin 'klen/python-mode'

" Language / Framework / Syntax
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'othree/html5.vim'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'stephpy/vim-yaml'
Plugin 'fatih/vim-go'
Plugin 'mxw/vim-jsx'

" Theme / Appearance
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on


" =============================
" Plugin-specific configuration
" =============================

" -----------------------------
" Plugin: Ag
" -----------------------------
nnoremap <leader>aa :Ag 
nnoremap <leader>as :Ag <cword><CR>

" -----------------------------
" Plugin: Markdown
" -----------------------------
let g:vim_markdown_folding_disabled=1

" -----------------------------
" Plugin: Easymotion
" -----------------------------
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
map <SPACE> <Plug>(easymotion-s2)

" -----------------------------
" Plugin: Sneak
" -----------------------------
let g:sneak#use_ic_scs = 1

" -----------------------------
" Plugin: Airline
" -----------------------------
let g:airline#extensions#tabline#enabled=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_powerline_fonts=1

" -----------------------------
" Plugin: Nerdtree
" -----------------------------
let g:nerdtree_tabs_open_on_gui_startup=0
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>nn :NERDTreeToggle<CR>

" -----------------------------
" Plugin: Fugitive
" -----------------------------
nnoremap <leader>gc :Git checkout 
nnoremap <leader>gg :Git 
nnoremap <leader>gm :Git merge 
nnoremap <silent> <leader>gb :Git branch<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
nnoremap <silent> <leader>gf :Git diff<CR>
nnoremap <silent> <leader>gl :Git pull<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>

" -----------------------------
" Plugin: Tagbar
" -----------------------------
nnoremap <leader>v :TagbarToggle<CR>

" -----------------------------
" Plugin: Gitgutter
" -----------------------------
let g:gitgutter_max_signs=5000

" -----------------------------
" Plugin: Ctrlp
" -----------------------------
let g:ctrlp_working_path_mode = 'rwa'
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$',
    \ 'file': '\.so$\|\.pyc$'}
let g:ctrlp_map = '<leader>t'
let g:ctrlp_max_files = 50000
let g:ctrlp_max_depth = 40
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>l :CtrlPLine<CR>

" -----------------------------
" Plugin: Tabular
" -----------------------------
nmap <leader>f& :Tabularize /&<CR>
vmap <leader>f& :Tabularize /&<CR>
nmap <leader>f= :Tabularize /=<CR>
vmap <leader>f= :Tabularize /=<CR>
nmap <leader>f: :Tabularize /:<CR>
vmap <leader>f: :Tabularize /:<CR>
nmap <leader>f:: :Tabularize /:\zs<CR>
vmap <leader>f:: :Tabularize /:\zs<CR>
nmap <leader>f, :Tabularize /,<CR>
vmap <leader>f, :Tabularize /,<CR>
nmap <leader>f,, :Tabularize /,\zs<CR>
vmap <leader>f,, :Tabularize /,\zs<CR>
nmap <leader>f<Bar> :Tabularize /<Bar><CR>
vmap <leader>f<Bar> :Tabularize /<Bar><CR>

" -----------------------------
" Plugin: Indent guides
" -----------------------------
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
autocmd vimenter,colorscheme * :hi indentguidesodd ctermfg=none ctermbg=235
autocmd vimenter,colorscheme * :hi indentguideseven ctermfg=none ctermbg=235
autocmd filetype python,html,htmldjango,htmljinja :IndentGuidesEnable

" -----------------------------
" Plugin: Jedi
" -----------------------------
let g:jedi#completions_command = "<C-k>"
let g:jedi#documentation_command = "K"
let g:jedi#goto_assignments_command = "<leader>ja"
let g:jedi#goto_definitions_command = "<leader>jd"
let g:jedi#popup_on_dot = 0
let g:jedi#rename_command = "<leader>jr"
let g:jedi#show_call_signatures = 0
let g:jedi#usages_command = "<leader>ju"
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#completions_enabled = 0
let g:jedi#smart_auto_mappings = 0

" -----------------------------
" Plugin: Python mode
" -----------------------------
let g:pymode_breakpoint_bind = '<leader>pb'
let g:pymode_folding = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
let g:pymode_lint_ignore = "W0401"
let g:pymode_lint_unmodified = 1
let g:pymode_options = 0
let g:pymode_rope = 0
let g:pymode_run_bind = '<leader>pr'

" -----------------------------
" Plugin: Gundo
" -----------------------------
nnoremap <leader>u :GundoToggle<CR>


" -----------------------------
" Plugin: Solarized
" -----------------------------
let g:solarized_termcolors=256
try
    colorscheme solarized
    set background=dark
catch /^Vim\%((\a\+)\)\=:E185/
endtry
if has("gui_running")
    set guifont=Liberation\ Mono\ for\ Powerline:h14
endif


" -----------------------------
" Plugin: JSX
" -----------------------------
let g:jsx_ext_required = 0


" ==============
" Initialization
" ==============

if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

if filereadable($HOME.'/.vimrc.local')
    source $HOME/.vimrc.local
endif
