set nocompatible


" Vundle filetype off

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
"Plugin 'msanders/snipmate.vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-repeat'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'justinmk/vim-sneak'
"Plugin 'myusuf3/numbers.vim'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
"Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'davidhalter/jedi-vim'
"Plugin 'ervandew/supertab'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'sjl/gundo.vim'
"Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/matchit.zip'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'klen/python-mode'

Plugin 'michaeljsmith/vim-indent-object'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'kana/vim-textobj-user'

Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'othree/html5.vim'
Plugin 'mitsuhiko/vim-jinja'

Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on


" Custom
" ======

" Basic
syntax enable

if has("gui_running")
    set guifont=Liberation\ Mono\ for\ Powerline:h14
endif

" Change the mapleader from \ to ,
let mapleader=","

" Colorscheme
let g:solarized_termcolors=256
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
set pastetoggle=<leader>p
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
set formatoptions=cqnr1
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

set wildignore+=*.so,*.swp,*.zip,*.pyc
set wildignore+=*.o,*.out,*.obj,*.so,*.pyc
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/.sass-cache/*
set wildignore+=*.swp,*~,._*

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

noremap <F1> <ESC>
"nnoremap j gj
"nnoremap k gk
"nnoremap ; :
nnoremap Y y$
nnoremap / /\v
vnoremap / /\v
nmap <tab> %
vmap <tab> %
"nnoremap <CR> :nohlsearch<CR>
nnoremap <leader><space> :nohlsearch<CR>
"inoremap jj <ESC>

" Plugin-specific
nnoremap <leader>aa :Ag 
nnoremap <leader>as :Ag <cword><CR>
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

" Sneak
let g:sneak#use_ic_scs = 1

" Snipmate
let g:snips_author = 'Minjong Chung<mjipeo@gmail.com>'

" Airline
Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled=1
"let g:airline_theme='bubblegum'
"let g:airline_left_sep=''
"let g:airline_right_sep=''
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
let g:airline_powerline_fonts=1

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
nnoremap <silent> <leader>l :TagbarToggle<CR>

" Ctrlp
"let g:ctrlp_custom_ignore = {
"\ 'dir':  '\v[\/]\.(git|hg|svn)$',
"\ 'file': '\v\.(exe|so|dll)$',
"\ 'link': 'some_bad_symbolic_links',
"\ }
let g:ctrlp_working_path_mode = 'rwa'
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.hg$\|\.svn$',
            \ 'file': '\.so$\|\.pyc$' }
let g:ctrlp_map = '<leader>t'
nnoremap <leader>b :CtrlPBuffer<CR>

"Tabular
nmap <Leader>f& :Tabularize /&<CR>
vmap <Leader>f& :Tabularize /&<CR>
nmap <Leader>f= :Tabularize /=<CR>
vmap <Leader>f= :Tabularize /=<CR>
nmap <Leader>f: :Tabularize /:<CR>
vmap <Leader>f: :Tabularize /:<CR>
nmap <Leader>f:: :Tabularize /:\zs<CR>
vmap <Leader>f:: :Tabularize /:\zs<CR>
nmap <Leader>f, :Tabularize /,<CR>
vmap <Leader>f, :Tabularize /,<CR>
nmap <Leader>f,, :Tabularize /,\zs<CR>
vmap <Leader>f,, :Tabularize /,\zs<CR>
nmap <Leader>f<Bar> :Tabularize /<Bar><CR>
vmap <Leader>f<Bar> :Tabularize /<Bar><CR>

"Indent-guides
" let g:indent_guides_auto_colors = 0
autocmd filetype python,html,htmldjango,htmljinja :IndentGuidesEnable
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
let g:jedi#goto_assignments_command = "<leader>ja"
let g:jedi#goto_definitions_command = "<leader>jd"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>ju"
let g:jedi#rename_command = "<leader>jr"
"let g:jedi#completions_command = "<C-Space>"
let g:jedi#completions_command = "<C-k>"
let g:jedi#show_call_signatures = 0

" Python mode
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
let g:pymode_folding = 0
let g:pymode_options = 0
let g:pymode_rope = 0
let g:pymode_run_bind = '<leader>pr'
let g:pymode_breakpoint_bind = '<leader>pb'

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
"let g:syntastic_auto_loc_list=1
"let g:syntastic_csslint_options = "--ignore=ids"
"
"let g:syntastic_auto_loc_list=0
"let g:syntastic_check_on_open=0
"let g:syntastic_auto_jump=1
"let g:syntastic_check_on_wq=0
"let g:syntastic_error_symbol = 'e'
"let g:syntastic_warning_symbol = 'w'
"nnoremap <leader>sr :SyntasticReset<CR>
"nnoremap <leader>sc :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" Signify
"let g:signify_vcs_list = ['git']

" Gundo
nnoremap <leader>u :GundoToggle<CR>

"""""""""""
"""""""""""
"""""""""""
"""""""""""
"""""""""""

set scrolloff=1

cabbrev ht tab help
cabbrev hv vert help

" Quickly edit/reload the vimrc file
nnoremap <leader>re :e $MYVIMRC<CR>
nnoremap <leader>rv :vs $MYVIMRC<CR>
nnoremap <leader>rs :so $MYVIMRC<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

nnoremap <leader>ff :normal! gg=G``<CR>

nnoremap <leader>qw :cclose<CR>:pclose<CR>:lclose<CR>
nnoremap <leader>qb :bp <BAR> bd #<CR>
nnoremap <leader>qq :q<CR>
nnoremap <leader>qa :qa<CR>

"vnoremap <C-c> <Esc>
inoremap <C-c> <Esc>

" For practicing
"inoremap <Esc> <nop>
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
"nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

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
    let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;:)]*')
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

autocmd BufNewFile,BufRead *.html set filetype=htmljinja
autocmd BufNewFile,BufRead *.json set filetype=javascript
autocmd Filetype javascript,css,less,html,htmldjango,htmljinja setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Local config
if filereadable(".vimrc.local")
    source .vimrc.local
endif

