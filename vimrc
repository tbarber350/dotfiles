set t_Co=256
set nocompatible "ensures vim over vi

if empty(glob('~/.vim/bundle'))
  silent !curl --insecure -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle') 

Plug 'rking/ag.vim'

Plug 'sjl/badwolf'

Plug 'Raimondi/delimitMate'

Plug 'mattn/emmet-vim'

Plug 'tmhedberg/matchit'

Plug 'scrooloose/nerdcommenter'

Plug 'scrooloose/nerdtree'

Plug 'vim-syntastic/syntastic'

Plug 'tomtom/tlib_vim'

Plug 'MarcWeber/vim-addon-mw-utils'

Plug 'bling/vim-airline'

Plug 'tpope/vim-fugitive'

Plug 'digitaltoad/vim-jade'

Plug 'unblevable/quick-scope'

Plug 'pangloss/vim-javascript'

Plug 'mxw/vim-jsx'

Plug 'jelera/vim-javascript-syntax'

Plug 'garbas/vim-snipmate'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-repeat'

Plug 'tpope/vim-unimpaired'

Plug 'christoomey/vim-sort-motion'

Plug 'vim-scripts/ReplaceWithRegister'

Plug 'kana/vim-textobj-user'

Plug 'kana/vim-textobj-indent'

Plug 'kana/vim-textobj-line'

Plug 'kana/vim-textobj-entire'

Plug 'kana/vim-textobj-function'

Plug 'thinca/vim-textobj-function-javascript'

Plug 'josuecau/vim-textobj-cssprop'

Plug 'elmcast/elm-vim'

Plug 'raichoo/purescript-vim'

Plug 'frigoeu/psc-ide-vim'

Plug 'christoomey/vim-tmux-navigator'

Plug 'godlygeek/tabular'

Plug 'jeetsukumaran/vim-filebeagle'

Plug 'prettier/vim-prettier'

Plug 'mtscout6/syntastic-local-eslint.vim'

Plug '/usr/local/opt/fzf'

Plug 'junegunn/fzf.vim'

call plug#end()


" search down into subfolders
set path+=**

" add relative numbers and current line number
set relativenumber
set number

" add line/column count to the bottom of screen
set ruler

" limit line length to 80 columns
if exists("+colorcolumn")
    set colorcolumn=81
endif

let g:javascript_enable_domhtmlcss=1
let g:javascript_ignore_javaScriptdoc=1

"elm format
let g:elm_format_autosave = 1

"syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
"use eslint to lint js
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
" let g:syntastic_auto_loc_list = 1

" let g:elm_syntastic_show_warnings = 1

"ignore html
let g:syntastic_html_checkers=['']

" keep ctrlP from searching certain dirs and files
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip

" tabs are two spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" Shortcut to rapidly toggle `set list`
noremap <leader>l :set list!<CR>

" Folding
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END


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

" move cursor to the end of the line in insert mode
inoremap <c-e> <esc><S-a>

if has("autocmd")
    " remove trailing white space when file is saved
    autocmd BufWritePre *.py,*.js :call <SID>StripTrailingWhitespaces()
    " treat ejs like html
    au BufRead,BufNewFile *.ejs setfiletype html
    " complete dashed words
    autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
    " trigger emmet
    au FileType html,css,sass,scss,less imap <expr>jk emmet#expandAbbrIntelligent("\<tab>")
endif

" place the cursor on its own line inside braces after a carriage return
inoremap <C-Return> <CR>O<Tab>
let delimitMate_expand_cr=1

" allow f6 to copy to the system clipboard on a mac
nnoremap <F6> :%w !pbcopy <CR><CR>
set clipboard=""

" put .swp file in a tmp directory in my home directory
set directory=~/.swptmp

" allow hidden buffers easily
set hidden

" highlight search results
set hlsearch

" highlight search as its typed
set incsearch

if has("nvim")
  " search and replace happens as you type
  set inccommand=split
endif

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

" Automatically read a file that has changed on disk
set autoread

set autoindent

" make command line completion better
set wildmenu


" status line
set laststatus=2
let g:airline_left_sep='>'
let g:airline_detect_modified=1

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" nerd tree remap toggle
noremap <silent> <Leader>nt	:NERDTreeToggle<CR>

" show hidden
let NERDTreeShowHidden=1

" easier window navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" split line at cursor and move to new line
nnoremap <Leader>j a<CR><Esc>k$

" open current window in new tab
nnoremap <Leader>z :tabedit %<CR>

" quick edit .vimrc
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" quick source .vimrc
:nnoremap <leader>sv :source $MYVIMRC<cr>

" highlight the line the cursor is on
set cursorline

" Set filetype stuff to on
filetype indent on

" load multiple files within vim
com! -complete=file -nargs=* Edit silent! exec "!vim --servername " . v:servername . " --remote-silent <args>"

set background=dark
colorscheme badwolf

" For MacVim
if has('gui_running')
  :set guifont=Bitstream\ Vera\ Sans\ Mono:h14
endif

" let the mouse work
set mouse=a

" use fzf
" set rtp+=/usr/local/opt/fzf

" ctrl p for fzf
:nnoremap <C-p> :Files<cr>

" run prettier before saving
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier
