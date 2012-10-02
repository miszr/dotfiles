set tags+=~/.vim/tags/cpp

" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" Set correct tab and line handling
set nowrap
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Line numbers
set number

set ruler

" Disable VI compatibility
set nocompatible

" Set terminal type
set ttyfast
set term=screen-256color
set t_Co=256

" Set correct encoding
set nobomb
set encoding=utf-8

filetype on
filetype plugin on
syntax on
set nocp

" Set the theme
color molokai
