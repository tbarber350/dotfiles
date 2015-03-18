execute pathogen#infect()
call pathogen#helptags()

set t_Co=256
set nocompatible "ensures vim over vi
set number 

" add toggle for relative line numbers
nnoremap <silent><leader>n :set relativenumber!<cr>

" add line/column count to the bottom of screen
set ruler

"syntax on
syntax enable
let g:javascript_enable_domhtmlcss=1
let g:javascript_ignore_javaScriptdoc=1

" keep ctrlP from searching certain dirs and files
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip

" tabs are four spaces
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

" Shortcut to rapidly toggle `set list`
noremap <leader>l :set list!<CR>

" function to strip white space
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" call trailing whitespace function with f5
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

if has("autocmd")
    " tabs are two for css
    autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType scss setlocal shiftwidth=2 tabstop=2 softtabstop=2 
    autocmd FileType sass setlocal shiftwidth=2 tabstop=2 softtabstop=2 
    " remove trailing white space when file is saved
    autocmd BufWritePre *.py,*.js :call <SID>StripTrailingWhitespaces()
    " treat ejs like html
    au BufRead,BufNewFile *.ejs setfiletype html
    " trigger emmet
    au FileType html,css,sass,scss,less imap <expr>jk emmet#expandAbbrIntelligent("\<tab>")
endif

" place the cursor on its own line inside braces after a carriage return
inoremap <C-Return> <CR><CR><C-o>k<Tab>

" allow f6 to copy to the system clipboard on a mac
nnoremap <F6> :%w !pbcopy <CR><CR>

" put .swp file in a tmp directory in my home directory
set directory=~/.swptmp
"set directory=.,$TEMP

" allow hidden buffers easily
set hidden

" highlight search results
set hlsearch

" highlight search as its typed
set incsearch 

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
set laststatus=2
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

" highlight the line the cursor is on
set cursorline

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

set background=dark
colorscheme twilight

" For MacVim
if has('gui_running')
  syntax enable
  colorscheme codeschool
  :set guifont=Bitstream\ Vera\ Sans\ Mono:h14
endif
