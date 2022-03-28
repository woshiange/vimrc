set encoding=utf-8
set number relativenumber
set cursorline 
syntax enable
set scrolloff=7
set colorcolumn=80
set fileformat=unix

" python start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale' " requires pip install flake8
Plug 'ojroques/vim-oscyank'
call plug#end()

colorscheme gruvbox
let g:airline_theme='gruvbox'

let g:netrw_liststyle = 3

let python_highlight_all = 1

if (has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()

autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | execute 'OSCYankReg "' | endif
