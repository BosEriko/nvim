
------------------------------------------------------------------------------------------ [Tree] --

require('nvim-tree').setup({
  filters = {
    custom = { "^.git$" }
  },
  view = {
    width = 40,
    side = 'right',
    hide_root_folder = true
  },
  renderer = {
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
