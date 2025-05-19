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
Plug 'xiyaowong/transparent.nvim'
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsEditSplit="vertical"

" inoremap <silent><expr> <Down>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Down>" :
      \ coc#refresh()
" inoremap <expr><Up> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
 inoremap <silent><expr> <TAB> 
    \coc#pum#visible() ? coc#pum#confirm() :
    \ "\<TAB>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


nnoremap <C-p> :FuzzyOpen<CR>
