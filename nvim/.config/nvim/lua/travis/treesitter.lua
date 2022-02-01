local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    ensure_installed = "maintained",
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

