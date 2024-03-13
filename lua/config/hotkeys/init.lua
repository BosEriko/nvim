
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

-- Initialize Whickey
local wk = require("which-key")

-- Control Shortcuts
map('', '<C-\\>', ':NvimTreeToggle<CR>', { silent = true })                                        -- Toggle NvimTree
map('', '<C-t>', ':NvimTreeFindFile<CR>', { silent = true })                                       -- Find current file in NvimTree
map('', '<C-h>', ':bp!<CR>', { silent = true })                                                    -- Previous buffer
map('', '<C-l>', ':bn!<CR>', { silent = true })                                                    -- Next buffer
map('', '<C-x>', ':bd<CR>', { silent = true })                                                     -- Close buffer
map('', '<C-q>', ':q<CR>', { silent = true })                                                      -- Quit
map('', '<C-s>', ':w<CR>', { silent = true })                                                      -- Save
map('', '<C-k>', ':WhichKey<CR>', { silent = true })                                               -- Show key mappings
map('', '<C-b>', ':let @+ = expand("%")<CR>', { silent = true })                                   -- Copy current file path to clipboard
map('', '<C-f>', ':Telescope live_grep<CR>', { silent = true })                                    -- Live grep
map('', '<C-p>', ':Telescope find_files<CR>', { silent = true })                                   -- Find files
map('', '<C-z>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>', { silent = true })                        -- Toggle terminal

-- Leader Shortcuts
map('n', '<leader>n', ':noh<CR>', { silent = true })                                               -- Remove highlighted text
map('n', '<leader>d', ':DD<CR>', { silent = true })                                                -- Delete line
map('n', '<leader>e', ':PackerSync<CR>', { silent = true })                                        -- Update Packer packages
map('n', '<leader>g', ':Gitsigns blame_line<CR>', { silent = true })                               -- Show Git blame for current line
map('n', '<leader>l', ':set list!<CR>', { silent = true })                                         -- Toggle display of hidden characters
map('n', '<leader>o', ":'<,'>!tac<CR>", { silent = true })                                         -- Reverse selected lines
map('n', '<leader>r', ':g/^/m0<CR>', { silent = true })                                            -- Reverse order of lines
map('n', '<leader>f', ':HopChar1<CR>', { silent = true })                                          -- Jump to character (Easymotion)
map('n', '<leader>w', ':set wrap!<CR>', { silent = true })                                         -- Toggle text wrap

-- Visual Shortcuts
map('v', '<C-g>', [["hy:%s/<C-r>h//gc<left><left><left>]], { silent = true })                      -- Interactive Search and Replace

-- Comments Shortcuts
require('Comment').setup({
  toggler = {
    line = '<C-c>cc',                                                                              -- Comment/uncomment line
    block = '<C-c>bc',                                                                             -- Comment/uncomment block
  },
  opleader = {
    line = '<C-c>c',                                                                               -- Add line comment
    block = '<C-c>b',                                                                              -- Add block comment
  },
  extra = {
    above = '<C-c>cO',                                                                             -- Add line comment above
    below = '<C-c>co',                                                                             -- Add line comment below
    eol = '<C-c>cA',                                                                               -- Add comment to end of line
  },
})

