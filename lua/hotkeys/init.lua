
--------------------------------------------------------------------------------------- [Hotkeys] --

-- Make it more like vimrc
local let = vim.g
function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change mapleader
let.mapleader = " "

-- Control Shortcuts
map("", "<C-\\>", ":NvimTreeToggle<CR>", { silent = true })
map("", "<C-t>", ":NvimTreeFindFile<CR>", { silent = true })
map("", "<C-h>", ":bp!<CR>", { silent = true })
map("", "<C-l>", ":bn!<CR>", { silent = true })
map("", "<C-x>", ":bd<CR>", { silent = true })
map("", "<C-q>", ":q<CR>", { silent = true })
map("", "<C-s>", ":w<CR>", { silent = true })
map("", "<C-k>", ':!cmd.exe /c start "https://boseriko-professional.notion.site/boseriko-professional/92045538d4be4360a6486d9d8d5178aa?v=b50d8f4a46a748a19cd7988e1d235a2e" /b<CR>', { silent = true })
map("", "<C-b>", ':let @+ = expand("%")<CR>', { silent = true })
map("", "<C-f>", ":Telescope live_grep<CR>", { silent = true })
map("", "<C-g>", ':%s/old/new/g')
map("", "<C-p>", ":Telescope find_files<CR>", { silent = true })

-- Leader Shortcuts
map("n", "<leader>d", ":DD<CR>", { silent = true })
map("n", "<leader>e", ":PackerSync<CR>", { silent = true })
map("n", "<leader>g", ":Gitsigns blame_line<CR>", { silent = true })
map("n", "<leader>l", ":set list!<CR>", { silent = true })
map("n", "<leader>n", ":noh<CR>", { silent = true })
map("n", "<leader>o", ":'<,'>sort<CR>", { silent = true })
map("n", "<leader>r", ":g/^/m0<CR>", { silent = true })
-- nnoremap <silent> <leader>s :Startify<CR>
-- nnoremap <silent> <leader>t :ToggleWorkspace<CR>
map("n", "<leader>f", ":HopChar1<CR>", { silent = true })
map("n", "<leader>w", ":set wrap!<CR>", { silent = true })

-- Comments Shortcuts
require('Comment').setup({
  toggler = {
    line = '<C-c>cc',
    block = '<C-c>bc',
  },
  opleader = {
    line = '<C-c>c',
    block = '<C-c>b',
  },
  extra = {
    above = '<C-c>cO',
    below = '<C-c>co',
    eol = '<C-c>cA',
  },
})

