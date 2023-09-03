-- Global Config
local function global_config()
  -- Hotkeys
  require('config/global/hotkeys')
end

-- VSCode Config
local function vsc_config()
end

-- Local Config
local function local_config()
  -- Themes
  require('config/local/theme')

  -- Hotkeys
  require('config/local/hotkeys')

  -- Settings
  require('config/local/settings/default')
  require('config/local/settings/lspconfig')
  require('config/local/settings/telescope')
  require('config/local/settings/treesitter')
  require('config/local/settings/treesitter-context')
  require('config/local/settings/nvim-tree')
  require('config/local/settings/toggleterm')
  require('config/local/settings/bufferline')
  require('config/local/settings/comment')
  require('config/local/settings/nvim-autopairs')
  require('config/local/settings/cmp')
  require('config/local/settings/gitsigns')
  require('config/local/settings/hop')
  require('config/local/settings/indent-blankline')
  require('config/local/settings/lualine')
  require('config/local/settings/which-key')
  require('config/local/settings/symlink')

  -- Plugins
  require('config/local/plugins')
end

-- Initialize Configs
global_config()
if vim.g.vscode then
  vsc_config()
else
  local_config()
end
