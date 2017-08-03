" Disable VI compatibility
set nocompatible

call plug#begin('~/.config/nvim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'w0rp/ale'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

Plug 'tpope/vim-speeddating'
Plug 'jceb/vim-orgmode', { 'for': 'org' }

Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'jamessan/vim-gnupg'

Plug 'dhruvasagar/vim-table-mode'
Plug 'thaerkh/vim-workspace'
call plug#end()

" Set guioptions for gvim
set guioptions=aAce

" Set correct tab and line handling
set nowrap

set tabstop=4
set softtabstop=4
set shiftwidth=4

set expandtab

set autoindent
set smartindent

" Display unfinished command
set showcmd 
" Visual autocomplete for command menu
set wildmenu
" Redraw only when we need to.
set lazyredraw

" Line numbers
set number

" Set the max tab count
set tabpagemax=50

" Enable syntax
syntax on

" Highlight matching [{()}]
set showmatch

" Enable folding
set foldenable
" Open most folds by default
set foldlevelstart=10
" 10 nested fold max
set foldnestmax=10
" Fold based on indent or markers
"set foldmethod=indent
set foldmethod=syntax
let g:xml_syntax_folding=1

" Enable modelines
set modelines=1

" Set correct encoding
set nobomb
" 10 nested fold max
set encoding=utf-8

" Set the theme
set background=light
if has('gui_running')
    set guifont=DejavuSansMono\ for\ Powerline\ 13
else 
    " Set terminal type
    set ttyfast
endif
color solarized8_light

" System Clipboard
set clipboard=unnamed

" Search
set ignorecase
set incsearch
set hls

set showmatch     " Show matching bracets when text indicator is over them
set matchtime=2   " How many tenths of a second to blink

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Keyboard mappings
" Space as Leader key
" Based on
" "http://karmanebula.com/technically-borked/2013/12/16/leader-key-as-space-capslock-as-esc"
let mapleader=" "
let maplocalleader=" "
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>e :e
nnoremap <Leader>t :tabedit
nnoremap <Leader>v :vsplit
nnoremap <Leader>s :split
nnoremap <Leader><TAB> gt
nnoremap <Leader>m :!make<CR>
nnoremap <Leader>c :noh<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>

vmap <Leader>y "+y
vmap <Leader>d "+d
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader>p "+p
nmap <Leader>P "+P

" Disable arrows so that i learn hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

map q: :q

" Change indentation continuously
vmap < <gv
vmap > >gv

" vim-airline
set laststatus=2
set showtabline=2
set noshowmode

let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

" undotree.vim
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" LaTeX
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf='evince &>/dev/null'
let g:Tex_ViewRule_dvi='evince &>/dev/null'

" YCM Settings
let g:ycm_confirm_extra_conf = 0
" use more stuff for the completions
set complete=.,w,b,u,i

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" table-mode
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='
let g:table_mode_align_char=':'
let g:table_mode_syntax=1
let g:table_mode_auto_align=0

" vim-workspace
let g:workspace_autosave_untrailspaces = 0

augroup TeX
autocmd FileType tex imap <silent> <buffer> <C-space> <Plug>Tex_Completion
augroup END

augroup vhdl
autocmd FileType vhdl setlocal shiftwidth=2
autocmd FileType vhdl setlocal tabstop=2
autocmd FileType vhdl setlocal softtabstop=2
augroup END

augroup Fix_airline_with_unite
autocmd FileType unite AirlineRefresh
autocmd FileType vimfiler AirlineRefresh
augroup END
