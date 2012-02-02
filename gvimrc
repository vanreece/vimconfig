set background=dark
color solarized
set guioptions-=T
set guifont=Menlo\ Regular:h16

"Map command-t to use :CommandT
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  nmap <D-t> :CommandT<CR>
  nmap <D-F> :Ack<space>
endif
