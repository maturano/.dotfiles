scriptencoding utf-8

call plug#begin('~/.dotfiles/_vendor/')
" vim-plug: https://github.com/junegunn/vim-plug
Plug 'chrisbra/csv.vim'
Plug 'tpope/vim-surround'
Plug 'tomasr/molokai'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
    \| Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'shougo/deoplete.nvim'
Plug 'metakirby5/codi.vim'
Plug 'vimwiki/vimwiki'

call plug#end()


" Editor behaviour
set nobackup
set noswapfile
set shortmess+=I
set gdefault " `/g` on search as default
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

" Code editor
set autoindent
set expandtab " Spaces instead of <Tab>s
set tabstop=4 softtabstop=4 shiftwidth=4 " 4 spaces | TODO: set 2 for X(HT)ML-type
set nowrap textwidth=120
set backspace=indent,eol,start
set hidden
set number relativenumber
syntax enable

colorscheme molokai
let g:rehash256=1

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
" Save with sudo | TODO: Could be improve
cmap w!! w !sudo tee % >/dev/null
nmap <leader>l :ls<CR>:b<space>

" Format JSON | TODO: Detect filetype?
nmap =j :%!python -m json.tool<CR>

" Plugins
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:vimwiki_list=[{'path': '~/Workspace/_wiki'}]
let g:deoplete#enable_at_startup=1
