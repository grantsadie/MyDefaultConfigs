 -- Init file for my lsp
 --
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  print("Glacier: Failed to load Lsp")
  return
end

require("user.lsp.mason")
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")

 require'lspconfig'.clangd.setup {
    --[[ capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()) ]]
 }

-- require("user.lsp.settings.lua-ls.lua")
