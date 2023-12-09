local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')
local telescope = require("telescope")
local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.keymap.set

telescope.setup{
    defaults = {
        mappings = {
            i = {
                ['<C-q>'] = actions.send_to_qflist,
                ['<c-b>'] = function() print(vim.inspect(action_state.get_selected_entry())) end
            },
        },
    }
}

telescope.load_extension('fzy_native')
telescope.load_extension('file_browser')

local M = {}
M.search_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< VimRC >",
    cwd = '/users/us16777/dotfiles/nvim/.config/nvim',
    hidden = true,
  })
end

M.curr_buff = function()
  require('telescope.builtin').current_buffer_fuzzy_find()
end

M.search_snippets = function()
    require('telescope.builtin').find_files({
        promp_title = "< Snippets >",
        cwd = '/users/us16777/.local/share/nvim/site/pack/packer/start/friendly-snippets/snippets',
        hidden = true,
    })
end

-- Find files using Telescope command-line sugar.
keymap("n", "<Leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<Leader>fa", function() return require('telescope.builtin').find_files({hidden=true}) end, opts)
keymap("n", "<Leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<Leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<Leader>fh", "<cmd>Telescope help_tags<cr>", opts)
keymap("n", "<Leader>fe", "<cmd>Telescope lsp_references<cr>", {noremap = true})
keymap("n", "<Leader>ft", "<cmd>Telescope grep_string<cr>", opts)
keymap("n", "<Leader>fd", function() return M.search_dotfiles() end, {noremap = true, silent = false})
keymap("n", "<Leader>fs", function() return M.search_snippets() end, {noremap = true, silent = false})
keymap("n", "<Leader>fc", function() return M.curr_buff() end, opts)
keymap("n", "<Leader>lg", function() return require('telescope.builtin').live_grep({grep_open_files=true}) end, opts)
keymap("n", "<Leader>fr", function()
    require('telescope.builtin').grep_string({
        search = vim.fn.input("Grep For > ")
    })
end, opts)
-- find the PascalCase version of the kebob-case word under the cursor
-- useful for vue files at work
keymap("n", "<Leader>fp", function()
    local current_word = vim.fn.expand("<cword>")
    -- change current_word from kebab-case to pascale case
    current_word = current_word:gsub( '-(%a)', function(first)
      return first:upper()
    end):gsub('^%a', function(first) return first:upper() end)
    require('telescope.builtin').grep_string({
        search = current_word
    })
end, opts)

keymap("n", "<Leader>fi", function()
    local current_word = vim.fn.expand("<cword>")
    -- change current_word from kebab-case to pascale case
    current_word = current_word:gsub( '^(%a)', function(first)
      return '<' .. first:lower()
    end):gsub('%u', function(first) return '-' .. first:lower() end)
    require('telescope.builtin').grep_string({
        search = current_word
    })
end, opts)
