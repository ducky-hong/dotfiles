call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-eunuch'
Plug 'justinmk/vim-dirvish'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-slash'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'w0rp/ale'
Plug 'benmills/vimux'
Plug 'sheerun/vim-polyglot'
Plug 'docunext/closetag.vim'
Plug 'qpkorr/vim-bufkill'
Plug 'dietsche/vim-lastplace'
call plug#end()

let mapleader = ' '
let g:mapleader = ' '

set nu
set nobackup
set nowb
set noswapfile
set ignorecase
set smartcase
set scrolloff=7
set linebreak
set wrap
set textwidth=0
set wrapmargin=0
set hidden

nmap <leader>w :w!<cr>
command! W w !sudo tee % > /dev/null

map 0 ^

nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

map <leader>pp :setlocal paste!<cr>

" bufkill
map <leader>bd :BD<cr>

" fzf
map <leader>g :Ag  
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" vimux
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vz :VimuxZoomRunner<CR>
