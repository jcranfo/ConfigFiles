
colorscheme mustang
"=========================================================================== 
" General  
" Turn off vi compatibility, use advanced vim-only features
set nocompatible
" Turn on syntax highlighting
syntax enable
" Set colors to use 256 color palette 
set t_Co=256
" Use the system clipboard as the default copy register
set clipboard=unnamed
" Copy indentation level when creating a new line
set autoindent
" Try to put the indent level at the right place 
set smartindent
" keep vim files in the ~/.vim folder
set viminfo='100,h,n~/.vim/viminfo

"=========================================================================== 
"Searching 
" Case insensitive search
set ignorecase
"Unless there is mixed case, then make it case sensitive
set smartcase
" Highlight search terms instead of just moing cursor
set hlsearch 
" Highlight search terms as you type them 
set incsearch

" Set the sequence 'jk' to hit escape. This will make leaving input mode easier
inoremap jk <esc>

" Set number lines on code
set number

" Initialize tab settings
set expandtab

" Change number of space characters for indentation 
set shiftwidth=4

" Set number of tabs to 4 spaces
set tabstop=4

" Change all tabs into 4 space tabs (screws up options files)
"retab
