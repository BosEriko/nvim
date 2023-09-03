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
  require('config/nvim/theme')

  -- Hotkeys
  require('config/nvim/hotkeys')

  -- Settings
  require('config/nvim/settings/default')
  require('config/nvim/settings/lspconfig')
  require('config/nvim/settings/telescope')
  require('config/nvim/settings/treesitter')
  require('config/nvim/settings/treesitter-context')
  require('config/nvim/settings/nvim-tree')
  require('config/nvim/settings/toggleterm')
  require('config/nvim/settings/bufferline')
  require('config/nvim/settings/comment')
  require('config/nvim/settings/nvim-autopairs')
  require('config/nvim/settings/cmp')
  require('config/nvim/settings/gitsigns')
  require('config/nvim/settings/hop')
  require('config/nvim/settings/indent-blankline')
  require('config/nvim/settings/lualine')
  require('config/nvim/settings/which-key')
  require('config/nvim/settings/symlink')

  -- Plugins
  require('config/nvim/plugins')
end

-- Initialize Configs
global_config()
if vim.g.vscode then
  vsc_config()
else
  local_config()
end
