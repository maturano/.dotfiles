scriptencoding utf-8


call plug#begin('~/.nvim/plugins')

Plug 'tpope/vim-surround'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
    \| Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'shougo/deoplete.nvim'
Plug 'vimwiki/vimwiki'

call plug#end()


set autoindent
set expandtab
set tabstop=4 softtabstop=4 shiftwidth=4
set nowrap textwidth=80
set backspace=indent,eol,start
set hidden

set incsearch
set wildmenu
set wildmode=list:full
set wildoptions=tagfile
set wildignorecase
let mapleader="\<Space>"

set laststatus=2
set number relativenumber
set ruler
set noshowmode
set nohlsearch

syntax enable
colorscheme molokai
let g:rehash256=1

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

let g:vimwiki_list=[{'path': '~/Workspace/_wiki'}]

let g:deoplete#enable_at_startup=1


" Move between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

cmap w!! w !sudo tee % >/dev/null
