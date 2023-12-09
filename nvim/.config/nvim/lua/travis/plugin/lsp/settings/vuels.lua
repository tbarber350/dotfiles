local util = require('lspconfig.util')

return {
    settings = {
        vetur = {
            ignoreProjectWarning = true
        },
    },
    filetypes = {'vue'},
    root_dir = util.root_pattern('.eslintrc.json', '.eslintrc.cjs', '.eslintrc.js');
}
