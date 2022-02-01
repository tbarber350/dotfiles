local util = require('lspconfig.util')

local eslint = {
    lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"},
    lintIgnoreExitCode = true,
    formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
    formatStdin = true
}

return {
    init_options = {documentFormatting = true},
    filetypes = {"javascript", "typescript", "vue"},
    root_dir = util.root_pattern('.eslintrc.json');
    settings = {
        rootMarkers = {".eslintrc.js", "package.json"},
        languages = {
            vue = {eslint},
            javascript = {eslint},
            typescript = {eslint},
        }
    }
}
