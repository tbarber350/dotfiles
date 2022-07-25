local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
vim.g.mapleader = " "

-- Modes
--  nomal_mode = "n",
--  insert_mode = "i",
--  visual_mode = "v",
--  visual_block_mode = "x",
--  term_mode = "t",
--  command_mode = "c",


-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- F6 copy to clip board
keymap("n", "<F6>", ":%w !pbcopy <CR><CR>", opts)

-- press leader h to turn off highlighting and clear any message already displayed
keymap("n", "<Leader>h", ":nohlsearch<Bar>:echo<CR>", opts)

-- open current window in new tab
keymap("n", "<Leader>z", ":tabedit %<CR>", opts)

-- quick edit .vimrc
keymap("n", "<Leader>ev", ":vsplit $MYVIMRC<CR>", opts)

-- quick source .vimrc
keymap("n", "<Leader>sv", ":source $MYVIMRC<CR>", opts)

keymap("n", "<C-c>", "<esc>", opts)

-- save session
keymap("n", "<Leader>ss", ":mks! ~/vim-session/session.vim<cr>", opts)

-- load session
keymap("n", "<Leader>ls", ":source ~/vim-session/session.vim<cr>", opts)

-- netrw
keymap("n", "<Leader>-v", ":Vex<cr>", opts)
keymap("n", "<Leader>-s", ":Sex<cr>", opts)
keymap("n", "<Leader>-l", ":Lexplore<cr>", opts)

-- make current file executable
keymap("n", "<Leader>x", ":!chmod +x %<CR>", opts)

-- fugitive bindings
keymap("n", "<Leader>gs", ":G<cr>", opts)
keymap("n", "<Leader>gg", ":diffget //2<cr>", opts)
keymap("n", "<Leader>gh", ":diffget //3<cr>", opts)
keymap("n", "<Leader>gw", ":Gwrite<cr>", opts)

-- gitsigns navigation
keymap("n", "<Leader>gn", "<cmd>Gitsigns next_hunk<CR>", opts)
keymap("n", "<Leader>gp", "<cmd>Gitsigns prev_hunk<CR>", opts)
keymap("n", "<Leader>gz", "<cmd>Gitsigns preview_hunk<CR>", opts)

-- Find files using Telescope command-line sugar.
keymap("n", "<Leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<Leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<Leader>fa", "<cmd>lua require('telescope.builtin').find_files({hidden=true})<cr>", opts)
keymap("n", "<Leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<Leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<Leader>fh", "<cmd>Telescope help_tags<cr>", opts)
keymap("n", "<Leader>fr", "<cmd>Telescope file_browser<cr>", {noremap = true})
keymap("n", "<Leader>fe", "<cmd>Telescope lsp_references<cr>", {noremap = true})
keymap("n", "<Leader>ft", "<cmd>Telescope grep_string<cr>", opts)
keymap("n", "<Leader>fd", "<cmd>lua require('travis.telescope').search_dotfiles()<cr>", {noremap = true, silent = false})
keymap("n", "<Leader>fc", "<cmd>lua require('travis.telescope').curr_buff()<cr>", opts)
keymap("n", "<Leader>lg", "<cmd>lua require('telescope.builtin').live_grep({grep_open_files=true})<cr>", opts)

_ = vim.cmd [[
    function! Scratch()
        split
        noswapfile hide enew
        setlocal buftype=nofile
        setlocal bufhidden=hide
        "setlocal nobuflisted
        "lcd ~
        file scratch
    endfunction
]]
keymap("n", "<Leader>sc", ":call Scratch()<CR>", opts)

_ = vim.cmd [[
    function! StripTrailingWhitespaces()
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
]]
keymap("n", "<F5>", ":call StripTrailingWhitespaces()<CR>", opts)

-- show hover doc
keymap("n", "<S-k>", "<Cmd>Lspsaga hover_doc<CR>", opts)
keymap("n", "gh", "<Cmd>Lspsaga lsp_finder<CR>", opts)

-- harpoon navigation
keymap("n", "<Leader>mm", "<cmd>lua require('harpoon.mark').add_file()<cr>", opts)
keymap("n", "<Leader>mt", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
keymap("n", "<Leader>ma", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", opts)
keymap("n", "<Leader>ms", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", opts)
keymap("n", "<Leader>md", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", opts)
keymap("n", "<Leader>mf", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", opts)
keymap("n", "<Leader>mg", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", opts)

-- change fileformat to unix
keymap("n", "<Leader>tu", "<cmd>set ff=unix<cr>", opts)


-- Insert --
-- move cursor to end of the line
keymap("i", "<C-e>", "<esc><S-a>", opts)

-- show hover doc
keymap("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts)

-- emmet
_ = vim.cmd [[au FileType html,css,sass,scss,less,mustache,vue,hbs imap <expr><leader><tab> emmet#expandAbbrIntelligent("\<tab>")]]

-- Visual --
-- Move text up and down
keymap("v", "∆", ":m .+1<CR>==", opts)
keymap("v", "˚", ":m .-2<CR>==", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "∆", ":move '>+1<CR>gv-gv", opts)
keymap("x", "˚", ":move '<-2<CR>gv-gv", opts)

