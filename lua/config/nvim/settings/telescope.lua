
------------------------------------------------------------------------------------- [Telescope] --

local actions = require('telescope.actions')
require('telescope').setup({
  pickers = {
    find_files = {
      hidden = true
    }
  },
  defaults = {
    prompt_prefix = ' 󰍉 ',
    selection_caret = '  ',
    path_display = { 'smart' },
    file_ignore_patterns = {
      '^.git/',
      'node_modules',
      'build',
      'dist',
      'yarn.lock',
      'Gemfile.lock'
    },
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--hidden",
      "--smart-case"
    },
    mappings = {
      i = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
      },
    },
    borderchars = {
      prompt = { '═', '║', '═', '║', '╔', '╗', '╝', '╚' },
      results = { '═', '║', '═', '║', '╔', '╗', '╝', '╚' },
      preview = { '═', '║', '═', '║', '╔', '╗', '╝', '╚' },
    }
  }
})
