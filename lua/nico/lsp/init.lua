local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "nico.lsp.lsp-signature"
require "nico.lsp.lsp-installer"
require("nico.lsp.handlers").setup()
require "nico.lsp.null-ls"
