set background=dark
color inkpot
set guioptions-=T
set guifont=Ubuntu\ Mono\ 14

"Map command-t to use :CommandT
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  nmap <D-t> :CommandT<CR>
  nmap <D-F> :Ack<space>
  set guifont=Menlo\ Regular:h16
endif
