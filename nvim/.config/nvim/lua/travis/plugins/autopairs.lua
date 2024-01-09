return {
    "windwp/nvim-autopairs", -- autopairs, integrates with both cmp and treesitter
    config = function()
        local autopairs = require('nvim-autopairs')

        autopairs.setup {
            disable_filetype = { "TelescopePrompt" },
            check_ts = true,
            ts_config = {
                lua = { 'string' }, -- it will not add a pair on that treesitter node
                javascript = { 'template_string' },
                java = false,     -- don't check treesitter on java
            },
        }
    end,
}
