local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "travis.lsp.lsp-installer"
require("travis.lsp.handlers").setup()
require "travis.lsp.null-ls"
