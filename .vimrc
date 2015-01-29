" Pathogen
execute pathogen#infect()
 
" Disable vi-compatibility
set nocompatible
 
" Sets how many command lines of history VIM has to remember
set history=700
 
" Changes default <leader> of '\' to ','
let mapleader = ","
 
" Enable filetype plugins
filetype plugin on
filetype indent on
 
" Turn on the Wildmenu
set wildmenu
 
" Indentation (uses soft tabs of two spaces)
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
 
" Searching, default ignorecase unless there is an upper-case letter
set ignorecase
set smartcase
set hlsearch
 
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>
 
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk
 
" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>
 
" Enable syntax highlighting
syntax enable
 
" Sessions
set ssop-=options
set ssop-=folds
 
" For GVim
if has("gui_running")
    set guioptions-=m   "remove menu bar
    set guioptions-=T   "removes top toolbar
    set guioptions-=r   "removes right-hand scroll bar
    set guioptions-=L   "remove left-hand scroll bar
    set t_Co=256        "use 256 colors if terminal supports it
    colorscheme codeschool
    set guiheadroom=0
endif
