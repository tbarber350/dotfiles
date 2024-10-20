-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
-- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window size up" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Increase window size down" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Increase window size left" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window size right" })

-- copy file to the system clipboard
vim.keymap.set("n", "<F6>", ":%w !pbcopy <CR><CR>", { desc = "copy the file to the system clipboard" })

-- set ctrl + c to esc
vim.keymap.set("n", "<C-c>", "<esc>", { desc = "ctrl+c same as esc" })

-- netrw
vim.keymap.set("n", "<Leader>nv", vim.cmd.Vex, { desc = "open netrw in split horizontal window" })
vim.keymap.set("n", "<Leader>ns", vim.cmd.Sex, { desc = "open netrw in split vertical window" })
vim.keymap.set("n", "<Leader>ne", vim.cmd.Ex, { desc = "open netrw in window" })

-- mini.files
vim.keymap.set("n", "<Leader>nf", function()
  return require("mini.files").open()
end, { desc = "open mini.files" })
-- fugitive bindings
vim.keymap.set("n", "<Leader>gs", vim.cmd.G, { desc = "git status" })
vim.keymap.set("n", "<Leader>gg", ":diffget //2<cr>", { desc = "diffget from buffer 2" })
vim.keymap.set("n", "<Leader>gh", ":diffget //3<cr>", { desc = "diffget from buffer 3" })
vim.keymap.set("n", "<Leader>gw", vim.cmd.Gwrite, { desc = "Gwrite" })

-- gitsigns navigation
vim.keymap.set("n", "<Leader>gn", "<cmd>Gitsigns next_hunk<CR>", { desc = "go to next hunk" })
vim.keymap.set("n", "<Leader>gp", "<cmd>Gitsigns prev_hunk<CR>", { desc = "got to previous hunk" })
vim.keymap.set("n", "<Leader>gz", "<cmd>Gitsigns preview_hunk<CR>", { desc = "preview hunk" })
vim.keymap.set("n", "<Leader>gl", "<cmd>Gitsigns blame_line<CR>", { desc = "git blame line" })

-- harpoon navigation
vim.keymap.set("n", "<Leader>mm", function()
	return require("harpoon.mark").add_file()
end, { desc = "add the current file to harpoon marks" })
vim.keymap.set("n", "<Leader>mt", function()
	return require("harpoon.ui").toggle_quick_menu()
end, { desc = "see a list of harpoon marks" })
vim.keymap.set("n", "<Leader>ma", function()
	return require("harpoon.ui").nav_file(1)
end, { desc = "go to harpoon window 1" })
vim.keymap.set("n", "<Leader>ms", function()
	return require("harpoon.ui").nav_file(2)
end, { desc = "go to harpoon window 2" })
vim.keymap.set("n", "<Leader>md", function()
	return require("harpoon.ui").nav_file(3)
end, { desc = "go to harpoon window 3" })
vim.keymap.set("n", "<Leader>mf", function()
	return require("harpoon.ui").nav_file(4)
end, { desc = "go to harpoon window 4" })
vim.keymap.set("n", "<Leader>mg", function()
	return require("harpoon.ui").nav_file(5)
end, { desc = "go to harpoon window 5" })

-- undotree
vim.keymap.set("n", "<Leader>u", vim.cmd.UndotreeToggle, { desc = "toggle undotree" })

-- save session
vim.keymap.set("n", "<Leader>vs", ":mks! ~/vim-session/session.vim<cr>", { desc = "save vim session" })

-- load session
vim.keymap.set("n", "<Leader>vl", ":source ~/vim-session/session.vim<cr>", { desc = "load vim session" })

-- make current file executable
vim.keymap.set("n", "<Leader>x", ":!chmod +x %<CR>", { desc = "make the current file executable" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- vim: ts=2 sts=2 sw=2 et
