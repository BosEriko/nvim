
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

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
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
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here

    -- Conquer of Completion
    -- Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine

    -- Functionalities
    use 'wbthomason/packer.nvim'                        -- Packer can manage itself
    use 'airblade/vim-gitgutter'                        -- Show git difference in the gutter
    use 'scrooloose/nerdtree'                           -- Tree file explorer
    -- Plug 'alvan/vim-closetag'                       " Auto close HTML tags
    -- Plug 'andweeb/presence.nvim'                    " Discord Rich Presence plugin for Neovim
    -- Plug 'dyng/ctrlsf.vim'                          " Word search inside directory
    -- Plug 'junegunn/fzf'                             " FZF Search
    -- Plug 'junegunn/fzf.vim'                         " FZF.vim Search
    -- Plug 'ngmy/vim-rubocop'                         " The Vim RuboCop plugin runs RuboCop and displays the results in Vim.
    -- Plug 'rizzatti/dash.vim'                        " API Lookup
    -- Plug 'terryma/vim-multiple-cursors'             " Multiple Cursors
    -- Plug 'thaerkh/vim-workspace'                    " Persistent Vim Session
    -- Plug 'tomtom/tcomment_vim'                      " Comment out function
    -- Plug 'tpope/vim-fugitive'                       " View any blob, tree, commit, or tag in the repository
    -- Plug 'Valloric/MatchTagAlways'                  " HTML Tag Matcher
    -- Plug 'yggdroot/indentline'                      " Indent lines

    -- Syntax Highlight
    -- Plug 'sheerun/vim-polyglot'                     " Language Pack

    -- Party tricks Plugin
    -- Plug 'mhinz/vim-startify'                       " Welcome message

    -- Design Plugin
    -- Plug 'joshdick/onedark.vim'                     " One Dark Theme
    -- Plug 'ryanoasis/vim-devicons'                   " Devicons (Always load this last)
    -- Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " Extra syntax and highlight for nerdtree files
    -- Plug 'vim-airline/vim-airline'                  " Bottom toolbar
    -- Plug 'vim-airline/vim-airline-themes'           " Themes for the bottom toolbar

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)

-- " ========================================================================= [COC Extensions] ===== "
-- let g:coc_global_extensions = [
--   \ 'coc-css',
--   \ 'coc-eslint',
--   \ 'coc-json',
--   \ 'coc-pairs',
--   \ 'coc-prettier',
--   \ 'coc-snippets',
--   \ 'coc-tslint',
--   \ 'coc-tsserver'
--   \ ]
