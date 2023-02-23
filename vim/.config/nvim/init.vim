colorscheme morning

let mapleader = " "

" Line
set number
set relativenumber
highlight LineNRAbove ctermfg=grey
highlight LineNR ctermfg=lightblue
highlight LineNRBelow ctermfg=grey
syntax on                  
set tabstop=4
set shiftwidth=4

" Stop me from using the arrows please
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>

" Navigation mappings
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h

" For tabs
nmap th gT
nmap tl gt
nmap <leader>n <C-w>T

" terminal mappings
tnoremap <Esc> <C-\><C-n>
nmap <leader>t :FloatermToggle<CR>
nmap <leader>nt :FloatermNew<CR>
nmap <leader>d :NERDTreeToggle<CR>

" searches
map <leader>h :noh<CR>

" tmp files
set backupdir=~/.vimtmp//,.
set directory=~/.vimtmp//,.
set noswapfile

" make sure we have vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'm4xshen/autoclose.nvim' " for brackets
Plug 'nvim-lualine/lualine.nvim'  " status line
Plug 'kyazdani42/nvim-web-devicons'  " 
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " c++ autocomplete
Plug 'preservim/nerdtree'  " File explorer
Plug 'voldikss/vim-floaterm'  " toggle terminal 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.x' }

call plug#end()

lua require("cadencorontzos")
