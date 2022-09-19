
----------------------------------------------------------------------------------------- [Theme] --

-- " This file is for the theme, colors, icons and symbols configuration
-- " For more icons to use you can go to:
-- " https://www.nerdfonts.com/cheat-sheet

-- Theme
vim.cmd[[colorscheme dracula]]

-- Color Default
local function get_color_from_hl(hl_name, fallback)
  local id = vim.api.nvim_get_hl_id_by_name(hl_name)
  if not id then
    return fallback
  end

  local foreground = vim.fn.synIDattr(vim.fn.synIDtrans(id), "fg")
  if not foreground or foreground == "" then
    return fallback
  end

  return foreground
end

-- Treesitter Context
local treesitter_bg_color = get_color_from_hl("Folder", "#6272A4")
local treesitter_fg_color = get_color_from_hl("CursorLineNr", "#F8F8F2")
vim.api.nvim_set_hl(0, 'TreesitterContext', { fg = treesitter_fg_color, bg = treesitter_bg_color })
vim.api.nvim_set_hl(0, 'TreesitterContextLineNumber', { fg = treesitter_fg_color, bg = treesitter_bg_color })
