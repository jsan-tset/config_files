" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Set relative line numbering with current line number (hybrid).
set number relativenumber

" Set shift and tab width to 4 spaces; use space characters instead of tabs.
set shiftwidth=4
set tabstop=4
set expandtab

" VIMSCRIPT ---------------------------- {{{
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" PLUGINS ------------------------------ {{{
"  
"  As easy as adding Plug'username/plugin-name' 
"   :PlugInstall to dowload and install them
call plug#begin('~/.vim/plugged')

  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'
  Plug 'frazrepo/vim-rainbow'
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline'
  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()

" Plugins conf
let g:rainbow_active = 1
"  }}}
