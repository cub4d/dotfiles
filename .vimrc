set nocompatible
filetype plugin on

set exrc
set secure

let mapleader = ","
let maplocalleader = "\\"

" Vundle settings {{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'morhetz/gruvbox'
Plugin 'vim-scripts/paredit.vim'
Plugin 'sjl/tslime.vim'

Plugin 'peterhoeg/vim-qml'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'drmingdrmer/xptemplate'

call vundle#end()
" }}}
" Настройки UTF-8 {{{
set encoding=utf-8
" }}}
" Основные настройки {{{
filetype on
filetype plugin on
filetype plugin indent on

syntax on

set background=dark
set t_Co=256
colorscheme gruvbox

set number
set hlsearch
set incsearch
set ls=2
set backspace=indent,eol,start
set ruler

" îòêëþ÷àåì áýêàïû è ñâîï-ôàéëû
set nobackup
set nowritebackup
set noswapfile

" Настройка Tab
" set smarttab
" set tabstop=8
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
" }}}
" Настройки GUI {{{
if has("gui_running")
	set cursorline
    set guioptions-=r
    set guioptions-=T
    set guioptions-=m
endif

if has('win32')
	set guifont=Consolas:h11:cANSI
endif
" }}}
" NerdTree {{{
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$'] 
" }}}
" tslime {{{
let g:tslime_ensure_trailing_newlines = 1
let g:tslime_normal_mapping = '<localleader>t'
let g:tslime_visual_mapping = '<localleader>t'
let g:tslime_vars_mapping = '<localleader>T'
" }}}
" xptemplate {{{
let g:xptemplate_vars = "SParg="
" }}}
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <C-h> <C-w><Left>
nnoremap <C-j> <C-w><Down>
nnoremap <C-k> <C-w><Up>
nnoremap <C-l> <C-w><Right>

nnoremap <C-c> <C-a>

nnoremap <C-J> m`o<Esc>``
nnoremap <C-K> m`O<Esc>``

augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

autocmd FileType lisp,scheme,art setlocal equalprg=scmindent.rkt

if &term =~ '256color'
    set t_ut=
endif
