" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'

" The bundles you install will be listed here
Plugin 'scrooloose/nerdtree'
"Plugin 'fholgado/minibufexpl.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
"Plugin 'klen/python-mode'
" Rainbow parenthesis highlighting
"Plugin 'luochen1990/rainbow' 
" Highlight all occurrences of the word under the cursor
"Plugin 'RRethy/vim-illuminate'
" Pulse cursor line each time a search is performed
"Plugin 'inside/vim-search-pulse'
" Better folding
"Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
"Plugin 'nvie/vim-flake8'
"Plugin 'kien/ctrlp.vim'
"Plugin 'Vimjas/vim-python-pep8-indent'
"Plugin 'majutsushi/tagbar'
" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

call vundle#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden

" Change Leader to ,
let mapleader = ","

" Clear search highlights
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
noremap <silent><Leader>/ :nohls<CR>

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
set hlsearch
set incsearch

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Use <F9> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F9>

" Display line numbers on the left
set number

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set textwidth=79

" Omni-completion
autocmd FileType python set omnifunc=pythoncomplete#Complete

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" Show position
set ruler

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Highlight column 80
set colorcolumn=80

" Alternative ESC (testing)
inoremap jk <Esc>
inoremap kj <Esc>

" Folding settings
set foldmethod=indent
set foldnestmax=1
set foldlevel=99
nnoremap <Space> za

" set my color scheme
se t_Co=256
colorscheme twilight256

" Clipboard
"set clipboard=unnamed

" Increase the refresh time
set updatetime=250

" ---
" NERDTree toggle
" ---
map <F2> :NERDTreeToggle<CR>

" ---
" Python-mode
" ---
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
"let g:pymode_rope = 1
"let g:pymode_rope_guess_project = 0
"
"" Documentation
"let g:pymode_doc = 1
"let g:pymode_doc_key = 'K'
"
""Linting
"let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8"
"" Auto check on save
"let g:pymode_lint_write = 1
"
"" Support virtualenv
"let g:pymode_virtualenv = 1
"
"" Enable breakpoints plugin
"let g:pymode_breakpoint = 1
"let g:pymode_breakpoint_key = '<leader>b'
"
"" syntax highlighting
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
"" Don't autofold code
"let g:pymode_folding = 0

" ---
" Syntastic
" ---
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_enable_elixir_checker = 1
" let g:syntastic_elixir_checkers = ["elixir"]

" ---
" Vim-Airline Configuration
" ---
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
