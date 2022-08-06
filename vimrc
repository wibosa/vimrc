"*********************************************************************
" Andrew's vimrc
"
" https://github.com/apemost/vimrc
"*********************************************************************

" Enable nocompatible
set nocompatible

if filereadable(expand('~/.vimrc.preload'))
  source ~/.vimrc.preload
endif

if filereadable(expand('~/.vim/init.vim'))
"execute 'source' fnamemodify(expand('<sfile>'), ':h') . '/.vim/init.vim'
  source ~/.vim/init.vim
endif

if filereadable(expand('~/.vimrc.afterload'))
  source ~/.vimrc.afterload
endif
