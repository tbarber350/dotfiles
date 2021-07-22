set t_Co=256
set nocompatible "ensures vim over vi

call plug#begin(stdpath('data') . '/plugged') 

Plug 'gruvbox-community/gruvbox'

Plug 'neovim/nvim-lspconfig'

Plug 'glepnir/lspsaga.nvim'

Plug 'hrsh7th/nvim-compe'

Plug 'onsails/lspkind-nvim'

Plug 'rakr/vim-one'

Plug 'Raimondi/delimitMate'

Plug 'mattn/emmet-vim'

Plug 'tmhedberg/matchit'

Plug 'scrooloose/nerdcommenter'

Plug 'scrooloose/nerdtree'

Plug 'tomtom/tlib_vim'

Plug 'MarcWeber/vim-addon-mw-utils'

Plug 'hoob3rt/lualine.nvim'

Plug 'tpope/vim-fugitive'

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

Plug 'christoomey/vim-tmux-navigator'

Plug 'godlygeek/tabular'

Plug 'prettier/vim-prettier'

Plug '/usr/local/opt/fzf'

Plug 'junegunn/fzf.vim'

Plug 'wellle/tmux-complete.vim'

Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

Plug 'editorconfig/editorconfig-vim'

Plug 'vimwiki/vimwiki'

Plug 'nvim-lua/popup.nvim'

Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-treesitter/playground'

Plug 'hrsh7th/nvim-compe'

call plug#end()


" search down into subfolders
set path+=**

" add relative numbers and current line number
set relativenumber
set number

" add line/column count to the bottom of screen
set ruler

" keep ctrlP from searching certain dirs and files
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip

" tabs are two spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

set clipboard=""

" colorscheme
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

colorscheme gruvbox
set background=dark
" set background=light

" put .swp file in a tmp directory in my home directory
set directory=~/.swptmp

" allow hidden buffers easily
set hidden

" highlight search results
set hlsearch

" highlight search as its typed
set incsearch

" Automatically read a file that has changed on disk
set autoread

set autoindent

" make command line completion better
set wildmenu

" status line
set laststatus=2

" highlight the line the cursor is on
set cursorline

" let the mouse work
set mouse=a

set signcolumn=yes

" limit line length to 80 columns
if exists("+colorcolumn")
    set colorcolumn=80
endif



" Shortcut to rapidly toggle `set list`
noremap <leader>l :set list!<CR>

" call trailing whitespace function with f5
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

" move cursor to the end of the line in insert mode
inoremap <c-e> <esc><S-a>

" place the cursor on its own line inside braces after a carriage return
inoremap <C-Return> <CR>O<Tab>
let delimitMate_expand_cr=1

" allow f6 to copy to the system clipboard on a mac
nnoremap <F6> :%w !pbcopy <CR><CR>

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

" nerd tree remap toggle
noremap <silent> <Leader>nt	:NERDTreeToggle<CR>

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

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fd :lua require('lua.telescope').search_dotfiles()<cr>

" ctrl p for fzf
:nnoremap <C-p> :Files<cr>

" move visually selected lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv 

" LSP config
" nnoremap <leader>gd <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <leader>gD <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <leader>gr <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <leader>gi <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <leader>K <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
" nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

inoremap <C-c> <esc>

" show hover doc
nnoremap <silent>K :Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>

" compe mappings
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
" inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

let g:javascript_enable_domhtmlcss=1
let g:javascript_ignore_javaScriptdoc=1

"elm format
let g:elm_format_autosave = 1

"ignore html
" let g:syntastic_html_checkers=['']

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


if has("autocmd")
    " remove trailing white space when file is saved
    autocmd BufWritePre *.py,*.js :call <SID>StripTrailingWhitespaces()
    " treat ejs like html
    au BufRead,BufNewFile *.ejs setfiletype html
    " complete dashed words
    autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
    " trigger emmet
    au FileType html,css,sass,scss,less,mustache,vue imap <expr><leader><tab> emmet#expandAbbrIntelligent("\<tab>")
endif


" search and replace happens as you type
set inccommand=split

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction


" show hidden
let NERDTreeShowHidden=1

" Set filetype stuff to on
filetype indent on

" load multiple files within vim
com! -complete=file -nargs=* Edit silent! exec "!vim --servername " . v:servername . " --remote-silent <args>"


" use fzf
" set rtp+=/usr/local/opt/fzf

" run prettier before saving
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

" open word documents
autocmd BufReadPost *.doc,*.docx,*.rtf,*.odp,*.odt silent %!pandoc "%" -tplain -o /dev/stdout

" disable auto comment insertion on new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=0

" added for vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_url_maxsave=0

function! VimwikiLinkHandler(link)
  " Use Vim to open external files with the 'vfile:' scheme.  E.g.:
  "   1) [[vfile:~/Code/PythonProject/abc123.py]]
  "   2) [[vfile:./|Wiki Home]]
  let link = a:link
  if link =~# '^vfile:'
    let link = link[1:]
  else
    return 0
  endif
  let link_infos = vimwiki#base#resolve_link(link)
  if link_infos.filename == ''
    echomsg 'Vimwiki Error: Unable to resolve link!'
    return 0
  else
    exe 'tabnew ' . fnameescape(link_infos.filename)
    return 1
  endif
endfunction


lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

" run all configuration in lua/travis
lua require('runall')
