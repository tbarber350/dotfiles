execute pathogen#infect()
call pathogen#helptags()

set nocompatible "ensures vim over vi
set number

"add line/column count to the bottom of screen
set ruler 

"syntax on
syntax enable
let g:javascript_enable_domhtmlcss=1
let g:javascript_ignore_javaScriptdoc=1

" tabs are four spaces
set softtabstop=4 
set shiftwidth=4 
set tabstop=4 
set expandtab 

" tabs are two for css
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2

" allow hidden buffers easily
set hidden

" highlight search results
set hlsearch

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Automatically read a file that has changed on disk
set autoread

set autoindent

" make command line completion better
set wildmenu

imap jj <esc>
cmap jj <esc>

" status line 
let laststatus=2
let g:airline_left_sep='>'
let g:airline_detect_modified=1

" nerd tree remap toggle
noremap <silent> <Leader>nt	:NERDTreeToggle<CR>

" easier window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" move a line down 1 line
noremap - ddp

" move a line up one line
noremap _ ddkP

" quick edit .vimrc
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" quick source .vimrc
:nnoremap <leader>sv :source $MYVIMRC<cr>

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on
colorscheme twilight
" For MacVim
if has('gui_running')
  syntax enable
  set background=dark
  colorscheme codeschool
  :set guifont=Bitstream\ Vera\ Sans\ Mono:h14
endif
