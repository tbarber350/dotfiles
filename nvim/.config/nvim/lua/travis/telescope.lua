local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')
local telescope = require("telescope")

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

return M
