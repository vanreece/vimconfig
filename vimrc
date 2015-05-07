syntax on                      "Syntax highlighting on
set number                     "Line numbers on
"# Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
set hlsearch                   "Highlights for search
set nowrap                     "Don't wrap long lines
set scrolloff=3                "Keep a few lines of context when scrolling
set history=1000               "Keep more history of commands/searches
set wildmenu                   "Command line tab completion gives list 
set wildmode=list:longest      "Give it in the buffer, rather than statusline
"set title                      "Set terminal title to file being edited
set listchars=tab:\ \ ,trail:· "Put trailing spaces as ·
set list                       "Enable the use of listchars
set expandtab                  "Put spaces in when tab is entered
set tabstop=4                  "Four spaces for a tab
set shiftwidth=4               "Use two spaces for auto indentation
set autoindent                 "Preserve indent level when moving to a new line
set colorcolumn=80             "Color column 80
set t_Co=256
colorscheme inkpot

let mapleader = ','

"\n for NERDTree
nmap <leader>n :NERDTreeToggle<CR>
"\f for ack
nmap <leader>f :Ack<space>

"Turn on filetype plugin, needed for NERDCommenter
filetype plugin on

"Status line
set laststatus=2        "Always show statusline
"set statusline=%t       "tail of the filename
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

inoremap <c-u> <esc>viwUea
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
vnoremap <leader>c :w !pbcopy<cr><cr>
nnoremap <leader>v :set paste<cr>:r !pbpaste<cr>:set nopaste<cr>


let g:CommandTMaxFiles=200000
autocmd BufWritePre *.py :%s/\s\+$//e
