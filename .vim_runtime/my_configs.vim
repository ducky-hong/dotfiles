set number

let g:NERDTreeWinPos = "left"

colors peaksea

set list listchars=tab:>-,trail:.,extends:>
set nolist

" Hack to get C-h working in neovim
if has('nvim')
  nmap <BS> <C-W>h
endif

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
