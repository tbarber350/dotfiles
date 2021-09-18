local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = {
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'path' },
        { name = 'buffer' },
        { name = 'nvim_lsp' },
        { name = 'emoji' },
        { name = 'nvim_lua' },
        { name = 'cmp_tabnine' },
        { name = 'vsnip' }
    },
})

