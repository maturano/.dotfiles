scriptencoding utf-8

call plug#begin('~/.dotfiles/_vendor/vim/')
" vim-plug: https://github.com/junegunn/vim-plug
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-airline/vim-airline'
call plug#end()

" Editor behaviour
set path+=**
set nobackup
set noswapfile
set shortmess+=I
set gdefault    " `/g` on search as default
set splitbelow
set splitright
set incsearch
set wildmenu
set wildmode=longest:list
set wildoptions=tagfile
set wildignorecase
set laststatus=2
set ruler
set noshowmode
set nohlsearch
set smartcase

" Code editor
set showmatch
set nowrap textwidth=120
set expandtab   " Spaces instead of <Tab>s
set tabstop=2 softtabstop=2 shiftwidth=2
set autoindent
set smartindent     " TODO: compare with cindent/indentexpr
set backspace=indent,eol,start
set hidden
set number relativenumber
set foldmethod=syntax foldcolumn=1 foldlevelstart=10

let &t_ut=''  " Fix background issue with kitty
syntax enable
silent! colorscheme dracula
let g:airline_theme='dracula'

" Keyboard
let mapleader=' '
" Avoid common typos
nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>
" Files navigation
nmap <leader>l :ls<CR>
" Move between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Keep cursor in place when joining lines
nnoremap J mzJ`z
" Save with sudo
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
nmap <leader>l :ls<CR>:b<space>
" Format JSON | REVIEW: Detect filetype?
nmap =j :%!python -m json.tool<CR>

" Plugins
let g:airline_powerline_fonts=1
