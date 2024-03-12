
--------------------------------------------------------------------------------------- [Plugins] --

-- Make it more like vimrc
local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins/init.lua file
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost ~/.files/config/.config/nvim/lua/config/nvim/plugins/init.lua source <afile> | PackerSync
augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = 'rounded' })
        end,
    },
})

-- Install your plugins here
return packer.startup(function(use)
  -- Make packer manage itself
  use 'wbthomason/packer.nvim'

  -- Dependency of most plugins
  use 'nvim-lua/plenary.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- Language Server Protocol
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  ------------------------------------------------------------------------------- [PLUGINS START] --

  -- Nvim Plugins
  use 'kyazdani42/nvim-tree.lua'                                -- Tree Explorer
  use 'akinsho/bufferline.nvim'                                 -- Top bar list
  use {'nvim-telescope/telescope.nvim', tag = '0.1.1'}          -- Fuzzy Finder and Word Search
  use 'numToStr/Comment.nvim'                                   -- Comment out function
  use 'lukas-reineke/indent-blankline.nvim'                     -- Indent lines
  use 'lewis6991/gitsigns.nvim'                                 -- Super fast git decorations implemented purely in lua/teal.
  use { 'phaazon/hop.nvim',  branch = 'v2' }                    -- Easymotion
  use 'Mofiqul/dracula.nvim'                                    -- Dracula colorscheme for NEOVIM written in Lua
  use 'nvim-lualine/lualine.nvim'                               -- A blazing fast and easy to configure Neovim statusline written in Lua
  use { 'akinsho/toggleterm.nvim', tag = '*' }                  -- A neovim plugin to persist and toggle multiple terminals
  use 'folke/which-key.nvim'                                    -- Displays a popup with possible key bindings
  use 'romainl/vim-devdocs'                                     -- API Lookup
  use 'nvim-treesitter/nvim-treesitter'                         -- Treesitter (Syntax highlight and other things)
  use 'nvim-treesitter/nvim-treesitter-context'                 -- Treesitter Context (See where you are easilly)
  use 'windwp/nvim-autopairs'                                   -- Autopairs for neovim written in lua

  --------------------------------------------------------------------------------- [PLUGINS END] --

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
