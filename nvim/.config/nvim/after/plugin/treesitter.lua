local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    ensure_installed = {'python', 'vue', 'javascript', 'scss', 'json'},
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        javascript = {'template_string'},
        java = false,-- don't check treesitter on java
    },
    highlight = {
        enable = true,
        disable = {''}, -- list of languages that will be disabled
        additional_vim_regex_highlighting = true,
    },
    indent = {
        enable = true,
        disable = {''},
    },
    ignore_install = {''},
    matchup = {
        enable = true,              -- mandatory, false will disable the whole extension
        disable = { "c", "ruby" },  -- optional, list of language that will be disabled
    },
}

