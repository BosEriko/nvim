
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
autocmd BufWritePost ~/.files/config/.config/nvim/lua/config/plugins/init.lua source <afile> | PackerSync
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
  use {'nvim-lua/plenary.nvim', commit = 'f7adfc4'}
  use {'kyazdani42/nvim-web-devicons', commit = '75df79f'}

  -- Language Server Protocol
  use {'neovim/nvim-lspconfig', commit = '4bdd380'}
  use {'hrsh7th/cmp-nvim-lsp', commit = '5af77f5'}
  use {'hrsh7th/cmp-buffer', commit = '3022dbc'}
  use {'hrsh7th/cmp-path', commit = '91ff86c'}
  use {'hrsh7th/cmp-cmdline', commit = '8ee981b'}
  use {'hrsh7th/nvim-cmp', commit = '04e0ca3'}

  ------------------------------------------------------------------------------- [PLUGINS START] --

  -- Nvim Plugins
  use {'kyazdani42/nvim-tree.lua', commit = 'ce3495b'}                                             -- Tree Explorer
  use {'akinsho/bufferline.nvim', commit = '64e2c5d'}                                              -- Top bar list
  use {'nvim-telescope/telescope.nvim', commit = 'c1a2af0'}                                        -- Fuzzy Finder and Word Search
  use {'numToStr/Comment.nvim', commit = '0236521'}                                                -- Comment out function
  use {'lukas-reineke/indent-blankline.nvim', commit = '9637670'}                                  -- Indent lines
  use {'lewis6991/gitsigns.nvim', commit = '41dc075'}                                              -- Super fast git decorations implemented purely in lua/teal.
  use {'phaazon/hop.nvim', commit = '1a1ecea'}                                                     -- Easymotion
  use {'Mofiqul/dracula.nvim', commit = '8d8bddb'}                                                 -- Dracula colorscheme for NEOVIM written in Lua
  use {'nvim-lualine/lualine.nvim', commit = '3c55675'}                                            -- A blazing fast and easy to configure Neovim statusline written in Lua
  use {'akinsho/toggleterm.nvim', commit = '193786e'}                                              -- A neovim plugin to persist and toggle multiple terminals
  use {'folke/which-key.nvim', commit = '4433e5e'}                                                 -- Displays a popup with possible key bindings
  use {'romainl/vim-devdocs', commit = '85a98b8'}                                                  -- API Lookup
  use {'nvim-treesitter/nvim-treesitter', commit = 'f197a15'}                                      -- Treesitter (Syntax highlight and other things)
  use {'nvim-treesitter/nvim-treesitter-context', commit = 'b8b7e52'}                              -- Treesitter Context (See where you are easilly)
  use {'windwp/nvim-autopairs', commit = 'c6139ca'}                                                -- Autopairs for neovim written in lua

  --------------------------------------------------------------------------------- [PLUGINS END] --

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
