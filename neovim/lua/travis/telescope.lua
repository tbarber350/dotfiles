local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')

require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ['<C-q>'] = actions.send_to_qflist,
                ['<c-b>'] = function() print(vim.inspect(action_state.get_selected_entry())) end
            },
        },
    }
}

require('telescope').load_extension('fzy_native')

local M = {}
M.search_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< VimRC >",
    cwd = vim.env.DOTFILES,
    hidden = true,
  })
end

M.curr_buff = function()
  local opts = require('telescope.themes').get_ivy()
  require('telescope.builtin').current_buffer_fuzzy_find(opts)
end

return M
