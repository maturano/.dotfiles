scriptencoding utf-8

call plug#begin('~/.dotfiles/_vendor/vim/')
" vim-plug: https://github.com/junegunn/vim-plug
Plug 'chrisbra/csv.vim'
Plug 'tpope/vim-surround'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mustache/vim-mustache-handlebars'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
    \| Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'metakirby5/codi.vim'

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
syntax enable

silent! colorscheme dracula

" Keyboard
let mapleader='\<Space>'
" Avoid common typos
nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>
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
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:vimwiki_list=[{'path': '~/Workspace/_wiki'}]

let g:ale_fixers = {
\    'javascript': ['prettier']
\}
let g:ale_linters = {
\    'javascript': ['eslint']
\}
let g:airline#extensions#ale#enable = 1
