execute pathogen#infect()
set number
syntax enable
set hlsearch "Highlight search

set background=light
colorscheme solarized
filetype plugin indent on
au BufRead,BufNewFile *.twig  set ft=htmljinja

let g:vdebug_options = {
			\ 'path_maps': {"/mnt/hgfs/devVolume/": "/Volumes/devVolume/"},
			\ 'server': '0.0.0.0'
			\}

" ToggleTagBar
nmap <F8> :TagbarToggle<CR>
 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list listchars=tab:▸\ ,eol:¬,trail:·
set noeol
set autoindent

set nobackup
set noswapfile

" Save on blur
au FocusLost * :wa

" Save on blur for terminal vim
au CursorHold,CursorHoldI * silent! wa

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$']
map <Leader>n :NERDTreeToggle<CR>

let g:syntastic_phpcs_conf="--standard=/Users/abaizeau/devVolume/freshapp/test/CodeStandards --tab-width=4"


" Easy windows navigating
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Easy Buffers navigating
nnoremap <Leader>l :ls<CR>:b<space>


" Javascript settings
au FileType javascript setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab
au FileType html setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab
" hbs and mustache files.
au BufRead,BufNewFile {*.mustache,*.hbs}  set ft=mustache
au FileType mustache setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab
