require "travis.plugins"
require "travis.options"
require "travis.keymaps"
require "travis.autopairs"
require "travis.cmp"
require "travis.lspconfig"
require "travis.lsp"
require "travis.lualine"
require "travis.telescope"
require "travis.treesitter"
require "travis.gitsigns"
require "travis.comment"

-- color scheme
_ = vim.cmd [[ 
    colorscheme gruvbox
    let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
]]

