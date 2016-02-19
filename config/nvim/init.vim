scriptencoding utf-8


call plug#begin('~/.nvim/plugins')

Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'

call plug#end()


set autoindent
set expandtab
set tabstop=4 softtabstop=4 shiftwidth=4
set nowrap textwidth=80
set backspace=indent,eol,start
set hidden

set incsearch
set wildmenu
set wildmode=list:longest
set wildoptions=tagfile
set wildignorecase
let mapleader=","

set laststatus=2
set number relativenumber
set ruler
set noshowmode

syntax enable
colorscheme molokai

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
