-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.opt.clipboard = "unnamedplus"

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
-- vimopt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- default to 2 space indentation
vim.softtabstop = 2
vim.shiftwidth = 2
vim.tabstop = 2
vim.expandtab = true

_ = vim.cmd [[
    " treat dashed words as whole words
    set iskeyword+=-
    filetype indent on
    " disable auto comment insertion on new lines
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=0

    " remove trailing white space when file is saved
    autocmd BufWritePre *.py,*.js.*.vue :call StripTrailingWhitespaces()
    " treat ejs like html
    au BufRead,BufNewFile *.ejs, *.hbs setfiletype html
    " complete dashed words
    autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
]]

-- vim: ts=2 sts=2 sw=2 et
