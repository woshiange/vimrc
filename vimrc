set nocompatible                                                                                                                       
filetype on                                                                                                                            
set rtp+=~/.vim/bundle/Vundle.vim                                                                                                      
call vundle#begin()                                                                                                                    
                                                                                                                                       
Plugin 'VundleVim/Vundle.vim'                                                                                                          
Plugin 'ctrlpvim/ctrlp.vim'                                                                                                            
Plugin 'mattn/emmet-vim' "for html                                                                                                     
Plugin 'morhetz/gruvbox' "color                                                                                                        
Plugin 'powerline/powerline' "power line                                                                                               
Plugin 'bling/vim-airline' " Lean & mean status/tabline for vim                                                                        
Plugin 'vim-airline/vim-airline-themes' " Themes for airline                                                                           
Plugin 'xolox/vim-misc' "for vim notes                                                                                                 
Plugin 'xolox/vim-notes' "for vim notes
Plugin 'christoomey/vim-tmux-runner'
Plugin 'dense-analysis/ale' " requires pip install flake8
Plugin 'Yggdroot/indentLine'
                                                                                                                                       
call vundle#end()                                                                                                                      
filetype plugin indent on                                                                                                              
                                                                                                                                       
"set showcmd " Show (partial) command in status line.                                                                                  
set showmatch " Show matching brackets.                                                                                                
set ignorecase " Do case insensitive matching                                                                                          
set smartcase " Do smart case matching                                                                                                 
set incsearch " Incremental search                                                                                                     
"set autowrite " Automatically save before commands like :next and :make                                                               
set hidden " Hide buffers when they are abandoned                                                                                      
                                                                                                                                       
" Custom config                                                                                                                        
set nu                                                                                                                                 
set number relativenumber
set cursorline                                                                                                                         
set colorcolumn=80                                                                                                                     
" emmet html plugin                                                                                                                    
let g:user_emmet_leader_key=','                                                                                                        
                                                                                                                                       
"set tabstop=2                                                                                                                         
"set softtabstop=2                                                                                                                     
"set shiftwidth=2                                                                                                                      
                                                                                                                                       
colorscheme gruvbox                                                                                                                    
set background=light                                                                                                                   
autocmd ColorScheme *                                                                                                                  
                                                                                                                                       
" enable all Python syntax highlighting features                                                                                       
let python_highlight_all = 1

map <Leader>o :VtrOpenRunner<CR>
map <Leader>s :VtrSendLinesToRunner<CR>
