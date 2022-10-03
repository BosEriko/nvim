
--------------------------------------------------------------------------------------- [Default] --

-- Make it more like vimrc
local set = vim.opt

-- Set utf-8
set.encoding = 'utf-8'

-- Use global clipboard
set.clipboard=unnamedplus

-- Set complete option
set.completeopt='menu,menuone,noselect'

-- Set extra colors
set.termguicolors = true

-- Backspace Fix
set.backspace = 'indent,eol,start'

-- Line numbers
set.number = true
set.relativenumber = true

-- Use system clipboard
set.clipboard = 'unnamed'

-- Stop line break
set.wrap = false

-- 2 spaces only for indentation
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true

-- Show when <leader> is toggled
set.showcmd = true

-- Show which line you're at
set.cursorline = true

-- Setlist Options
set.listchars = { space = ' ', tab = '▸▸', eol = '¬', extends = '>', precedes = '<', trail = '~' }

-- Search Settings
set.hlsearch = true
set.ignorecase = true
set.smartcase = true
set.incsearch = true

-- Remove ~ (End of Buffer) at the extra lines
set.fillchars = { eob = ' ', vert = ' ' }

-- Set line length
set.colorcolumn = '100'

-- Enable Indend Blankline
require('indent_blankline').setup({
  filetype_exclude = { 'packer','NvimTree','help' }
})

-- Enable gitsigns (Git support)
require('gitsigns').setup()

-- Enable lualine (Statusbar)
require('lualine').setup({
  options = {
    theme = 'dracula',
    disabled_filetypes = { 'packer','NvimTree' }
  }
})

-- Enable hop (Easymotion)
require('hop').setup({
  keys = 'asdfjkl;'
})

-- Enable whichkey
require('which-key').setup()
