local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    ensure_installed = {'python', 'vue', 'javascript', 'scss', 'json'},
    auto_install = true,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
}

