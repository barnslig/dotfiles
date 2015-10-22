" Vundle setup
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mhinz/vim-signify'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype indent on

" Custom settings
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab

syntax enable
set background=dark
colorscheme solarized

set number
set modeline
set smartindent
set autoindent
set lazyredraw
set cursorline
set nowrap

let g:airline_powerline_fonts = 1
set laststatus=2
set noshowmode

let NERDTreeMinimalUI = 1
