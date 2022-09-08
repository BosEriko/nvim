
---------------------------------------------------------------------------------------- [Config] --

-- Make it more like vimrc
local set = vim.opt

-- Set utf-8
set.encoding = 'utf-8'

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

-- " Setlist Options
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
  filetype_exclude = { 'packer','NvimTree' }
})

-- Enable gitsigns (Git support)
require('gitsigns').setup({
    current_line_blame = true
})

-- Enable nvim-tree (File explorer)
require('nvim-tree').setup({
  view = {
    width = 40,
    side = 'right',
    hide_root_folder = true
  },
  renderer = {
    indent_markers = {
      enable = true,
      inline_arrows = true
    },
    icons = {
      glyphs = {
        git = {
          unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        }
      }
    }
  }
})

-- Enable lualine (Statusbar)
require('lualine').setup({
  options = {
    theme = 'tokyonight',
    disabled_filetypes = { 'packer','NvimTree' }
  }
})

-- Enable hop (Easymotion)
require('hop').setup({
  keys = 'asdfjkl;'
})

-- " NERDTree and Startify at startup
-- autocmd VimEnter *
--   \   if !argc()
--   \ |   Startify
--   \ |   NERDTree
--   \ |   wincmd w
--   \ | endif

-- " Startify
-- let g:startify_custom_indices = map(range(1,100), 'string(v:val)')
-- let g:startify_change_to_dir  = 0

-- " Workspace
-- let g:workspace_session_directory     = $HOME . '/.history/vim/workspace/sessions'
-- let g:workspace_undodir               = $HOME . '/.history/vim/workspace/undodir'

-- " Markdown
-- let g:vim_markdown_override_foldtext        = 0
-- let g:vim_markdown_emphasis_multiline       = 0
-- let g:vim_markdown_conceal                  = 0
-- let g:vim_markdown_conceal_code_blocks      = 0
-- let g:vim_markdown_follow_anchor            = 0
-- let g:vim_markdown_folding_disabled         = 1
-- let g:vim_markdown_folding_level            = 1
-- let g:vim_markdown_no_default_key_mappings  = 1
