-- NeoVim Config
require('config/theme')
require('config/hotkeys')

-- Plugins Config
require('config/settings/default')
require('config/settings/lsp')
require('config/settings/telescope')
require('config/settings/treesitter')
require('config/settings/tree')
require('config/settings/toggleterm')
require('config/settings/bufferline')
require('config/settings/cmp')

-- Packer
require('config/plugins')
