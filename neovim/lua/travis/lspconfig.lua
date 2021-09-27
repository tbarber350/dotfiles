local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'
local util = require('lspconfig.util')

-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    --Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')


    -- Mappings.
    local opts = { noremap=true, silent=true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    --buf_set_keymap('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<leader>ae', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '<leader>ak', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', '<leader>aj', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

    -- formatting
    if client.resolved_capabilities.document_formatting then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        -- vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
        vim.api.nvim_command [[augroup END]]
    end
end

require('lspkind').init({
    -- enables text annotations
    --
    -- default: true
    with_text = true,

    -- default symbol map
    -- can be either 'default' or
    -- 'codicons' for codicon preset (requires vscode-codicons font installed)
    --
    default = 'default',
    -- preset = 'codicons',

    -- override preset symbols
    --
    -- default: {}
    symbol_map = {
        Text = '',
        Method = 'ƒ',
        Function = '',
        Constructor = '',
        Variable = '',
        Class = '',
        Interface = 'ﰮ',
        Module = '',
        Property = '',
        Unit = '',
        Value = '',
        Enum = '了',
        Keyword = '',
        Snippet = '﬌',
        Color = '',
        File = '',
        Folder = '',
        EnumMember = '',
        Constant = '',
        Struct = ''
    },
})

-- npm i -g vscode-langservers-extracted
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

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
nvim_lsp.diagnosticls.setup {
    on_attach = on_attach,
    filetypes = { 'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact', 'javascriptvue', 'vue', 'markdown', 'pandoc', 'html'},
    init_options = {
        linters = {
            eslint = {
                sourceName = 'eslint',
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
            javascriptreact = 'eslint',
            typescript = 'eslint',
            typescriptreact = 'eslint',
            javascriptvue = 'eslint',
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
            javascriptreact = 'eslint_d',
            javascriptvue = 'eslint_d',
            vue = 'eslint_d',
            -- scss = 'stylelint',
            -- less = 'prettier',
            typescript = 'eslint_d',
            typescriptreact = 'eslint_d',
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
