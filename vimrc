"Vundle Setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()
filetype plugin indent on
"End Vundle Setup

if has('gui_running')
  set background=dark
  try
    colorscheme solarized
  catch /^Vim\%((\a\+)\)\=:E185/
    "Do nothing
  endtry
  set guioptions-=T
  if has("gui_macvim")
    set guifont=Inconsolata:h18
  else
    set guifont=Ubuntu\ Mono\ 14
    set guifont=Monospace\ 14
  endif
else
  try
    colorscheme zenburn
  catch /^Vim\%((\a\+)\)\=:E185/
    "Do nothing
  endtry
endif

syntax on                      "Syntax highlighting on
set number                     "Line numbers on
"# Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
set hlsearch                   "Highlights for search
set wrap linebreak nolist      "Soft wrap on word boundaries
set scrolloff=3                "Keep a few lines of context when scrolling
set history=1000               "Keep more history of commands/searches
set wildmenu                   "Command line tab completion gives list 
set wildmode=list:longest      "Give it in the buffer, rather than statusline
set listchars=tab:\ \ ,trail:· "Put trailing spaces as ·
set list                       "Enable the use of listchars
set expandtab                  "Put spaces in when tab is entered
set tabstop=4                  "Four spaces for a tab
set shiftwidth=4               "Use two spaces for auto indentation
set autoindent                 "Preserve indent level when moving to a new line
set colorcolumn=80             "Color column 80
set t_Co=256
set backspace=2

let mapleader = ','

"Status line
set laststatus=2        "Always show statusline
set statusline=%f       "Filename as typed
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %p%%  "percent through file

"" Backup and swap files
set backupdir=~/.vim/_backup/ " where to put backup files.
set directory=~/.vim/_temp/   " where to put swap files.

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 " tabs to two spaces for js

inoremap jj <Esc>

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
