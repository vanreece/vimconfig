syntax on                 "Syntax highlighting on
set number                "Line numbers on
set hlsearch              "Highlights for search
set nowrap                "Don't wrap long lines
set scrolloff=3           "Keep a few lines of context when scrolling
set history=1000          "Keep more history of commands/searches
set wildmenu              "Command line tab completion gives list 
set wildmode=list:longest "Give it in the buffer, rather than statusline
"set title                 "Set terminal title to file being edited
set listchars=trail:·     "Put trailing spaces as ·
set list                  "Enable the use of listchars
set expandtab             "Put spaces in when tab is entered
set tabstop=2             "Two spaces for a tab
set shiftwidth=2          "Use two spaces for auto indentation
set autoindent            "Preserve indent level when moving to a new line

nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>f :Ack<space>
nmap <C-F> :Ack<space>

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
