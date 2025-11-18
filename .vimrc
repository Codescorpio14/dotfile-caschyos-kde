" --- Core behavior ---
set nocompatible
set number
set mouse=a
set clipboard=unnamedplus

" --- Indentation ---
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set backspace=indent,eol,start

" Highlight trailing whitespace
match ErrorMsg '\s\+$'

" --- Search ---
set ignorecase
set smartcase
set incsearch
set hlsearch

" --- UI / Interaction ---
set showcmd
set showmatch
set wildmode=longest:full,full
set termguicolors

" Sensible split directions
set splitright
set splitbelow

" --- Files ---
set undofile
set swapfile
set autoread
set autowrite

" --- Syntax & Colors ---
syntax on
