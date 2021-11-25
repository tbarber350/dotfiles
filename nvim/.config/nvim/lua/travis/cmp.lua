local cmp = require'cmp'
local lspkind = require'lspkind'

cmp.setup({
    formatting = {
        format = lspkind.cmp_format ({
            with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[api]",
                path = "[path]",
                luasnip = "[snip]",
                gh_issues = "[issues]",
            },
        })
    },
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = {
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'buffer', keyword_length = 5 },
        { name = 'emoji' },
        { name = 'vsnip' },
    },
    experimental = {
        native_menu = false,
        ghost_text = true,
    }
})
