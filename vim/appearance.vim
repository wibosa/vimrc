"*********************************************************************
" Appearance
"*********************************************************************

" Enable syntax
syntax enable

" Set theme background
execute 'set background=' . g:custom_background

" Set theme colorscheme
if !has('gui_running') && g:custom_colorscheme == 'molokai'
  let g:rehash256 = 1
endif
execute 'colorscheme ' . g:custom_colorscheme

if has('gui_running')
  execute 'source' fnamemodify(expand('<sfile>'), ':h') . '/gui.vim'
else
  " Enable 256 colors
  if &term == 'xterm' || &term == 'screen' || &term == 'screen-256colors' || &term == 'putty-256colors' || &term == 'xterm-256colors' || &term == 'putty-256colors'
    set t_Co=256
  endif
  if (has('termguicolors'))
    set termguicolors
  endif
  " Make comments italic
  if empty($TMUX) && empty($SSH_TTY) && empty($SUDO_USER)
    let &t_ZH="\e[3m"
    let &t_ZR="\e[23m"
    highlight Comment cterm=italic
  endif
endif

" Set colorcolumn
if exists('+colorcolumn') && g:custom_colorcolumn > 0
  execute 'set colorcolumn=' . g:custom_colorcolumn
endif

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" Enable line numbers
set number

" Show the cursor position
set ruler

" Disable error bells
set noerrorbells

" Don’t reset cursor to start of line when moving around
set nostartofline

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list

" Highlight searches
set hlsearch

" Highlight dynamically as pattern is typed
set incsearch

" Make tabs as wide as two spaces
set tabstop=2

" Always show status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Use relative line numbers
if exists("&relativenumber")
  set relativenumber
  autocmd BufReadPost * set relativenumber
endif

" Highlight current line
set cursorline

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Disable the preview window feature
set completeopt-=preview
