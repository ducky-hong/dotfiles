set number

let g:NERDTreeWinPos = "left"

colors peaksea

set list listchars=tab:>-,trail:.,extends:>
set nolist

" Hack to get C-h working in neovim
if has('nvim')
  nmap <BS> <C-W>h
endif
