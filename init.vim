set nocompatible
set showmatch
set hlsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set relativenumber
set noswapfile


set clipboard=unnamedplus
set fileformat=unix
set fileformats=unix,dos,mac
filetype on
syntax on

set ignorecase
set smartcase

set foldenable
set foldmethod=manual
set foldlevel=99

set wrap linebreak

set shell=/bin/sh

set lazyredraw
set updatetime=300
set shortmess+=c

call plug#begin('~/.local/share/nvim/plugged')

Plug 'cloudhead/neovim-fuzzy'

call plug#end()

nnoremap <C-p> :FuzzyOpen<CR>
