
------------------------------------------------------------------------------------------- [LSP] --

-- This file is for the lsp configuration
-- For more language server to use you can go to:
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

local lsp = require('lspconfig')
local servers = {
  'tsserver'
}

for _, server in ipairs(servers) do
  lsp[server].setup({})
end
