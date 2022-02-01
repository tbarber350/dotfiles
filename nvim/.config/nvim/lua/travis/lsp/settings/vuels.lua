local util = require('lspconfig.util')

return {
    settings = {
        vetur = {
            ignoreProjectWarning = true
        },
    },
    filetypes = {'javascriptvue', 'vue'},
    root_dir = util.root_pattern('.eslintrc.json');
}
