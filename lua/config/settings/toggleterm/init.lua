
------------------------------------------------------------------------------------ [Toggleterm] --

require('toggleterm').setup()
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<C-z>', [[<Cmd>exit<CR>]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
