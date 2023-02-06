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

" terminal mappings
tnoremap <Esc> <C-\><C-n>

set backupdir=~/.vimtmp//,.
set directory=~/.vimtmp//,.


