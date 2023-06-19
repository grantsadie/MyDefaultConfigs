local nvim_lsp = require('lspconfig')

nvim_lsp.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = {"vim"}, -- add 'vim' to recognized globals
      },
      -- ... more Lua language server settings here ...
    },
  },
  -- ... more general language server settings here ...
}
