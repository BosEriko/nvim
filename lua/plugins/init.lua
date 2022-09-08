
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
autocmd BufWritePost ~/.files/config/.config/nvim/lua/plugins/init.lua source <afile> | PackerSync
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
            return require("packer.util").float()
        end,
    },
})

-- Install your plugins here
return packer.startup(function(use)
    -- Make packer manage itself
    use 'wbthomason/packer.nvim'

    -- Dependency of most plugins
    use 'nvim-lua/plenary.nvim'

    ----------------------------------------------------------------------------- [PLUGINS START] --

    -- Tree file explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
        tag = 'nightly'
    }

    -- Top bar
    use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- Functionalities
    -- use 'airblade/vim-gitgutter'                        -- Show git difference in the gutter
    -- use 'alvan/vim-closetag'                            -- Auto close HTML tags
    -- use 'dyng/ctrlsf.vim'                               -- Word search inside directory
    -- use 'junegunn/fzf'                                  -- FZF Search
    -- use 'junegunn/fzf.vim'                              -- FZF.vim Search
    -- use 'ngmy/vim-rubocop'                              -- The Vim RuboCop plugin runs RuboCop and displays the results in Vim.
    -- use 'rizzatti/dash.vim'                             -- API Lookup
    use 'romainl/vim-devdocs'                             -- API Lookup
    -- use 'terryma/vim-multiple-cursors'                  -- Multiple Cursors
    -- use 'thaerkh/vim-workspace'                         -- Persistent Vim Session
    -- use 'tomtom/tcomment_vim'                           -- Comment out function
    -- use 'tpope/vim-fugitive'                            -- View any blob, tree, commit, or tag in the repository
    -- use 'Valloric/MatchTagAlways'                       -- HTML Tag Matcher
    use 'lukas-reineke/indent-blankline.nvim'             -- Indent lines
    use 'lewis6991/gitsigns.nvim'                         -- Super fast git decorations implemented purely in lua/teal.

    -- Syntax Highlight
    -- Plug 'sheerun/vim-polyglot'                     " Language Pack

    -- Party tricks Plugin
    -- use 'mhinz/vim-startify'                            -- Welcome message

    -- Design Plugin
    use 'folke/tokyonight.nvim'                           -- A dark and light Neovim theme written in Lua
    use 'nvim-lualine/lualine.nvim'                       -- A blazing fast and easy to configure Neovim statusline written in Lua

    ------------------------------------------------------------------------------- [PLUGINS END] --

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
