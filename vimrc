execute pathogen#infect()
set number
syntax enable
set hlsearch "Highlight search

set background=dark
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

" Sometime I am lazy`
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"columns

set colorcolumn=80,120

"Split right seems more natural
set splitright

" Save on blur
au FocusLost * :wa

" Save on blur for terminal vim
au CursorHold,CursorHoldI * silent! wa

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$']

" Change leader to space
let mapleader = " "

" Change the default mapping for ctrlp
let g:ctrlp_map = '<Leader>p'
" Togle NerdTree
map <Leader>n :NERDTreeToggle<CR>
" Switch bewtween open buffers
map <Leader>b :CtrlPBuffer<CR>
" Most recently used files
map <Leader>m :CtrlPBuffer<CR>

let g:syntastic_phpcs_conf="--standard=/Users/abaizeau/devVolume/freshapp/test/CodeStandards --tab-width=4"

let g:multi_cursor_exit_from_insert_mode=0

" fugitive bindings
map <Leader>gc :Gcommit<CR>
map <Leader>gw :Gwrite<CR>

" Easy windows navigating
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"Allow per-project settings
set exrc
set secure

"tmux mapping
let g:tmux_navigator_no_mappings = 1
"
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>

"Easy Buffers navigating
nnoremap <Leader>l :ls<CR>:b<space>


" Javascript settings
au FileType javascript setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab

au FileType python setl  tabstop =4 softtabstop=4 shiftwidth=4 expandtab
"
" JSON settings
au FileType json setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab
" html settings
au FileType html setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab
" hbs and mustache files.
au BufRead,BufNewFile {*.mustache,*.hbs}  set ft=mustache
au FileType mustache setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab

" scss files
au BufRead,BufNewFile *.scss  set ft=sass
au FileType sass setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab
