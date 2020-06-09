scriptencoding utf-8

call plug#begin('~/.dotfiles/_vendor/vim/')
" vim-plug: https://github.com/junegunn/vim-plug
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  \| Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
call plug#end()

" Editor behaviour
set nobackup nowritebackup noswapfile
set path+=**
set updatetime=300
set shortmess+=Ic
set laststatus=2
set noshowmode
set hidden
set ruler
set number relativenumber
set splitbelow splitright
set signcolumn=auto
set wildignorecase
set wildmenu
set wildmode=longest:list
set wildoptions=tagfile

set backspace=indent,eol,start
set autoindent smartindent     " TODO: compare with cindent/indentexpr
set showmatch
set incsearch nohlsearch ignorecase smartcase
set nowrap textwidth=120
set foldmethod=syntax foldcolumn=1 foldlevelstart=10
set expandtab   " Spaces instead of <Tab>s
set tabstop=2 softtabstop=2 shiftwidth=2

let &t_ut=''  " Fix background issue with kitty
syntax enable
silent! colorscheme dracula

" Keyboard
let mapleader=' '

cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!|  " Save with sudo
" Move between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nmap =j :%!python -m json.tool<CR>| " Format JSON | REVIEW: Detect filetype?

nnoremap J mzJ`z|   " Keep cursor in place when joining lines
nnoremap K <nop>
nnoremap Q <nop>
nnoremap <F1> <nop>
nnoremap <C-p> :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>h :History<CR>

" Plugins
let g:airline_powerline_fonts=1
let g:airline_theme='dracula'

autocmd! FileType fzf set laststatus=0 noshowmode noruler norelativenumber
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
