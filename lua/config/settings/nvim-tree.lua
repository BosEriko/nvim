
------------------------------------------------------------------------------------------ [Tree] --

require('nvim-tree').setup({
  filters = {
    custom = { "^.git$" }
  },
  view = {
    width = 40,
    side = 'right',
  },
  renderer = {
    root_folder_label = false,
    indent_markers = {
      enable = false,
      inline_arrows = true
    },
    icons = {
      glyphs = {
        git = {
          unstaged = '',
          staged = '',
          unmerged = '',
          renamed = '➜',
          untracked = '★',
          deleted = '',
          ignored = '◌'
        }
      }
    }
  }
})
