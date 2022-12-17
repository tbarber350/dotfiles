local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    return
end

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)

    local opts = {
        on_attach = require("travis.lsp.handlers").on_attach,
        capabilities = require("travis.lsp.handlers").capabilities,
    }

    -- if server.name == "efm" then
    --     local efm_opts = require("travis.lsp.settings.efm")
    --     opts = vim.tbl_deep_extend("force", efm_opts, opts)
    -- end
    --
    if server.name == "jsonls" then
        local jsonls_opts = require("travis.lsp.settings.jsonls")
        opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
    end

    if server.name == "sumneko_lua" then
        local sumneko_opts = require("travis.lsp.settings.sumneko_lua")
        opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
    end

    if server.name == "cssls" then
        local cssls_opts = require("travis.lsp.settings.cssls")
        opts = vim.tbl_deep_extend("force", cssls_opts, opts)
    end

    if server.name == "vuels" then
        local vuels_opts = require("travis.lsp.settings.vuels")
        opts = vim.tbl_deep_extend("force", vuels_opts, opts)
    end


     if server.name == "diagnosticls" then
         local diagnosticls_opts = require("travis.lsp.settings.diagnosticls")
         opts = vim.tbl_deep_extend("force", diagnosticls_opts, opts)
     end

    if server.name == "tsserver" then
        opts = opts
    end

    if server.name == "eslint" then
        opts = opts
    end




    -- This setup() function will take the provided server configuration and decorate it with the necessary properties
    -- before passing it onwards to lspconfig.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)
