
---------------------------------------------------------------------------------------- [Config] --

-- Make it more like vimrc
local set = vim.opt

-- Set utf-8
set.encoding = 'utf-8'

-- Use global clipboard
set.clipboard=unnamedplus

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

-- Enable nvim-tree (File explorer)
require('nvim-tree').setup({
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

-- Enable toggleterm
require('toggleterm').setup()
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<C-z>', [[<Cmd>exit<CR>]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- Enable whichkey
require('which-key').setup()

-- Enable treesitter context
require('treesitter-context').setup({
  line_numbers = true
})

-- Enable bufferline for the topbar
require('bufferline').setup({
  options = {
    diagnostics = 'nvim_lsp',
    show_buffer_close_icons = false,
    show_close_icon = false,
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

-- Enable Telescope
local actions = require('telescope.actions')
require('telescope').setup({
  defaults = {
    prompt_prefix = '  ',
    selection_caret = '  ',
    path_display = { 'smart' },
    file_ignore_patterns = { '.git/', 'node_modules' },
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

