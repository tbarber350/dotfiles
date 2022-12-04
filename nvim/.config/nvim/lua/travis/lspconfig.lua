local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'
local util = require('lspconfig.util')

-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)

    --Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')


    -- Mappings.
    local bufopts = { noremap=true, silent=true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    --vim,keymap.set('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    -- vim.keymap.set('n', '<space>wl', print(vim.inspect(vim.lsp.buf.list_workspace_folders())), bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<leader>ae', vim.diagnostic.open_float, bufopts)
    vim.keymap.set('n', '<leader>ak', vim.diagnostic.goto_prev, bufopts)
    vim.keymap.set('n', '<leader>aj', vim.diagnostic.goto_next, bufopts)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, bufopts)
    vim.keymap.set("n", "<space>f", vim.lsp.buf.formatting, bufopts)

    -- formatting
    if client.server_capabilities.document_formatting then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        -- vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
        vim.api.nvim_command [[augroup END]]
    end
end

-- npm i -g vscode-langservers-extracted
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- npm i -g bash-language-server
nvim_lsp.bashls.setup{}

nvim_lsp.html.setup{
    on_attach = on_attach
}

-- npm i -g pyright
nvim_lsp.pyright.setup{
    on_attach = on_attach
}

-- npm install -g typescript typescript-language-server
nvim_lsp.tsserver.setup{
    on_attach=on_attach
}

-- npm install -g vls
nvim_lsp.vuels.setup{
    on_attach=on_attach,
    settings = {
        vetur = {
            completion = {
                autoImport = true
            },
            format = {
                scriptInitialIndent = true
            },
            ignoreProjectWarning = true
        },
    },
    filetypes = {'javascriptvue', 'vue'},
    root_dir = util.root_pattern('.eslintrc.json');
}

-- npm install -g @angular/language-server
require'lspconfig'.angularls.setup{
    on_attach = on_attach
}

-- npm i -g vscode-langservers-extracted
require'lspconfig'.jsonls.setup {
    commands = {
        Format = {
            function()
                vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
            end
        }
    }
}

-- npm i -g vscode-langservers-extracted
require'lspconfig'.cssls.setup {
    on_attach=on_attach,
    root_dir = util.root_pattern('.stylelintrc.json', 'package.json'),
    capabilities = capabilities,
}

-- npm install -g @tailwindcss/language-server
require'lspconfig'.tailwindcss.setup{
    on_attach = on_attach
}

-- npm i -g stylelint-lsp
require'lspconfig'.stylelint_lsp.setup{
    on_attach=on_attach,
    settings = {
        stylelintplus = {
            autoFixOnFormat = true,
            filetypes = {'css', 'scss'}
        }
    }
}

-- npm install -g diagnostic-languageserver
-- npm install -g eslint_d
nvim_lsp.diagnosticls.setup {
    on_attach = on_attach,
    filetypes = { 'javascript', 'angularjs', 'json', 'typescript', 'javascriptvue', 'vue', 'markdown', 'pandoc', 'html'},
    init_options = {
        linters = {
            eslint = {
                sourceName = 'eslint_d',
                command = 'eslint_d',
                rootPatterns = { '.eslintrc.js', 'package.json' },
                debounce = 100,
                args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
                parseJson = {
                    errorsRoot = '[0].messages',
                    line = 'line',
                    column = 'column',
                    endLine = 'endLine',
                    endColumn = 'endColumn',
                    message = '[eslint] ${message} [${ruleId}]',
                    security = 'severity'
                },
                securities = {
                    [2] = 'error',
                    [1] = 'warning'
                }
            },
            stylelint = {
                sourceName = 'stylelint',
                command = 'stylelint',
                args = {'--formatter', 'compact', '%filepath'},
                rootPatterns = {'.stylelintrc.json', '.stylelintrc'},
                debounce = 100,
                formatPattern = {
                    [[: line (\d+), col (\d+), (warning|error) - (.+?) \((.+)\)]],
                    {
                        line = 1,
                        column = 2,
                        security = 3,
                        message = {4, ' [', 5, ']'},
                    },
                },
                securities = {
                    warning = 'warning',
                    error = 'error',
                },
            },
        },
        filetypes = {
            javascript = 'eslint',
            typescript = 'eslint',
            javascriptvue = 'eslint',
            angularjs = 'eslint',
            vue = 'eslint',
            -- scss = 'stylelint',
            -- css = 'stylelint',
            html = 'eslint'
        },
        formatters = {
            eslint_d = {
                command = 'eslint_d',
                args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
                rootPatterns = { '.eslintrc.json' },
            },
            prettier = {
                command = 'prettier',
                args = { '--stdin-filepath', '%filename' }
            },
            stylelint = {
                command = 'stylelint',
                args = {'--fix', '--stdin', '--stdin-filename', '%filepath'},
            }
        },
        formatFiletypes = {
            css = 'stylelint',
            javascript = 'eslint_d',
            javascriptvue = 'eslint_d',
            vue = 'eslint_d',
            -- scss = 'stylelint',
            -- less = 'prettier',
            typescript = 'eslint_d',
            json = 'prettier',
            markdown = 'prettier',
        }
    }
}

-- lua
local system_name
if vim.fn.has("mac") == 1 then
    system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
    system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
    system_name = "Windows"
else
    print("Unsupported system for sumneko")
end

-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
-- local sumneko_root_path = vim.fn.stdpath('cache')..'/lspconfig/sumneko_lua/lua-language-server'
local sumneko_root_path = vim.fn.stdpath('cache') .. '/../../lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
    on_attach = on_attach,
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = runtime_path,
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            }
        },
    },
}

-- icon
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    -- This sets the spacing and the prefix, obviously.
    virtual_text = {
        spacing = 4,
        prefix = ''
    }
}
)
