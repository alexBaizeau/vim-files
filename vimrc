set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nerdtree
Plugin 'scrooloose/nerdtree'

Plugin 'tpope/vim-cucumber.git'

Plugin 'mileszs/ack.vim'

Plugin 'joukevandermaas/vim-ember-hbs'

Plugin 'w0rp/ale'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'altercation/vim-colors-solarized'

Plugin 'tpope/vim-sensible'

Plugin 'vim-vdebug/vdebug'

Plugin 'tpope/vim-fugitive'

Plugin 'kien/ctrlp.vim'

Plugin 'evidens/vim-twig'

Plugin 'Valloric/YouCompleteMe'

call vundle#end() 

set number
syntax enable
set hlsearch "Highlight search

set background=dark
colorscheme solarized
filetype plugin indent on
au BufRead,BufNewFile *.twig  set ft=htmljinja

" Enable copy paste
set clipboard=unnamed

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

set backupdir=~/.vim/backup

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
" ctrlp igonore node_modules
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|tmp)|(\.(swp|ico|git|svn))$'
" Togle NerdTree
map <Leader>n :NERDTreeToggle<CR>
" Switch bewtween open buffers
map <Leader>b :CtrlPBuffer<CR>
" Most recently used files
map <Leader>m :CtrlPBuffer<CR>

let g:syntastic_phpcs_conf="--standard=/Users/abaizeau/devVolume/freshapp/test/CodeStandards --tab-width=4"

let g:syntastic_ruby_checkers=['rubocop', 'mri']

let g:multi_cursor_exit_from_insert_mode=0

" fugitive bindings
map <Leader>gc :Gcommit<CR>
map <Leader>gw :Gwrite<CR>

" Easy windows navigating
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"
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

" Easy vimrc editing

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <Leader>g :YcmCompleter GoTo<CR>


" Javascript settings
au FileType javascript setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab
au FileType typescript setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab

au FileType python setl  tabstop =4 softtabstop=4 shiftwidth=4 expandtab
"
" JSON settings
au FileType json setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab
" html settings
au FileType html setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab
" ruby settings
au FileType ruby setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab

au FileType html.handlebars setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab

" scss files
au BufRead,BufNewFile *.scss  set ft=sass
au FileType sass setl  tabstop =2 softtabstop=2 shiftwidth=2 expandtab

let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8'
