local options = {
	backup = false,
	clipboard = '',
    syntax = 'on',
	path = '**', -- search down into subfloders
	softtabstop = 4,
	shiftwidth = 4,
	tabstop = 4,
	expandtab = true,
	ruler = true,
	number = true, -- line numbers
	relativenumber = true,
    wildignore = '*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip',
    -- directory = '~/.swptmp',
    hidden = true,  -- allow hidden buffers easily
    hlsearch = true, -- highlight search results
    incsearch = true, -- highlight search as its typed
    autoread = true, --automatically read a file that has changed on disk
    autoindent = true,
    wildmenu = true,  -- make command line completion better
    laststatus = 2, -- status line
    cursorline = true, -- highlight the line the cursor is on
    mouse = a, -- let the mouse work
    signcolumn = 'yes',
    colorcolumn = '80', -- limit line length to 80
    inccommand = 'split', -- search and replace happens as you type
    sidescrolloff = 4,
    termguicolors = true,
    background = 'dark',
    fileformat = 'unix',
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end

_ = vim.cmd [[
    " treat dashed words as whole words
    set iskeyword+=-
    filetype indent on
    " disable auto comment insertion on new lines
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=0

    let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
    let g:vimwiki_url_maxsave=0

    " remove trailing white space when file is saved
    autocmd BufWritePre *.py,*.js.*.vue :call StripTrailingWhitespaces()
    " treat ejs like html
    au BufRead,BufNewFile *.ejs, *.hbs setfiletype html
    " complete dashed words
    autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
]]

