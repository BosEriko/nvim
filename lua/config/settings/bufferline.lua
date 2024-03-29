
------------------------------------------------------------------------------------ [Bufferline] --

require('bufferline').setup({
  options = {
    diagnostics = 'nvim_lsp',
    show_buffer_close_icons = false,
    show_close_icon = false,
    separator_style = { "", "" },
    offsets = {
      {
        filetype = 'NvimTree',
        text = ' File Explorer',
        highlight = 'Directory',
        separator = true
      }
    }
  }
})
