colorscheme morning

" Line
set number
set relativenumber
highlight LineNRAbove ctermfg=grey
highlight LineNR ctermfg=lightblue
highlight LineNRBelow ctermfg=grey
syntax on                  
" Stop me from using the arrows please
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
set tabstop=4
set shiftwidth=4

" Navigation mappings
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h
nmap th gT
nmap tl gt

" terminal mappings
tnoremap <Esc> <C-\><C-n>

set backupdir=~/.vimtmp//,.
set directory=~/.vimtmp//,.
set noswapfile

call plug#begin()

Plug 'm4xshen/autoclose.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'

call plug#end()

lua require("cadencorontzos")
