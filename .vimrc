" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

" Autocomplete menu options
"set completeopt=menuone,menu,longest,preview
set completeopt=menuone,menu,longest

" Set guioptions for gvim
" Disable the menu bar
set guioptions-=m
" Disable the toolbar
set guioptions-=T
" Disable the Left Scrollbar
set guioptions-=l
set guioptions-=L
" Disable the Right Scrollbar
set guioptions-=r
set guioptions-=R
" Disable the GUI tabbar
set guioptions-=e

" Set correct tab and line handling
set nowrap
"set tabstop=8
"set softtabstop=4
"set shiftwidth=4
"set tabstop=4
"set softtabstop=2
"set shiftwidth=2
set tabstop=6
set softtabstop=3
set shiftwidth=3
set expandtab

set autoindent
set smartindent

" Display unfinished command
set showcmd 

" Line numbers
set number

" Enable the ruler
set ruler

" Disable VI compatibility
set nocompatible

" Set terminal type
set ttyfast
set t_Co=256

" Set correct encoding
set nobomb
set encoding=utf-8

" Enable filetype plugin
filetype on
filetype plugin on
filetype indent on

" Enable syntax
syntax on

set nocp

" Let eclim handle autocompletion
let g:SuperTabDefaultCompletionType = "<c-x><c-u>"

" Set the theme
color molokai

" LaTeX
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_DefaultTargetFormat='pdf'

" System Clipboard
set clipboard=unnamed

" Search
set ignorecase
set incsearch
set hls

" Fancy
hi Normal ctermbg=none
hi LineNr ctermbg=none
hi NonText ctermbg=none
hi SignColumn ctermbg=none
