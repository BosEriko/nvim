
--------------------------------------------------------------------------------------- [Hotkeys] --

-- Make it more like vimrc
local let = vim.g
function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change mapleader
let.mapleader = ' '

-- Leader Shortcuts
map('n', '<leader>n', ':noh<CR>', { silent = true })
