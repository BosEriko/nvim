
---------------------------------------------------------------------------------------- [Config] --

-- Make it more like vimrc
local set = vim.opt

-- Set utf-8
set.encoding = 'utf-8'

-- Backspace Fix
set.backspace = 'indent,eol,start'

-- " Syntax highlighting
-- if !exists("g:syntax_on")
--   syntax enable
-- endif

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

-- " Show which line you're at
-- set cursorline

-- " Setlist Options
set.listchars = { space = ' ', tab = '▸▸', eol = '¬', extends = '>', precedes = '<', trail = '~' }

-- " Search Settings
-- set hlsearch
-- set ignorecase
-- set smartcase
-- set incsearch

-- " Store temporary files in a central spot
-- let vimtmp = $HOME . '/.tmp/' . getpid()
-- silent! call mkdir(vimtmp, "p", 0700)
-- let &backupdir=vimtmp
-- let &directory=vimtmp

-- " Remove vertical Split Character
-- set fillchars=""

-- " Initialize FZF
-- set rtp+=~/.fzf

-- Set line length
set.colorcolumn = '100'

-- " NERDTree and Startify at startup
-- autocmd VimEnter *
--   \   if !argc()
--   \ |   Startify
--   \ |   NERDTree
--   \ |   wincmd w
--   \ | endif

-- Enable nvim-tree
require("nvim-tree").setup({
    view = {
        side = 'right'
    }
})
-- let NERDTreeMinimalUI                       = 1
-- let NERDTreeShowHidden                      = 1
-- let g:WebDevIconsUnicodeDecorateFolderNodes = 1
-- let g:DevIconsEnableFoldersOpenClose        = 1

-- " Airline
-- let g:airline_enable_branch               = 1
-- let g:airline_enable_syntastic            = 1
-- let g:airline#extensions#tabline#enabled  = 1
-- let g:airline#extensions#tabline#fnamemod = ':t'

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

-- " Discord Presence
-- let g:presence_auto_update         = 1
-- let g:presence_neovim_image_text   = "The One True Text Editor"
-- let g:presence_main_image          = "neovim"
-- let g:presence_client_id           = "793271441293967371"
-- let g:presence_debounce_timeout    = 10
-- let g:presence_enable_line_number  = 0
-- let g:presence_blacklist           = []
-- let g:presence_buttons             = 1
-- let g:presence_file_assets         = {}
-- let g:presence_editing_text        = "Editing %s"
-- let g:presence_file_explorer_text  = "Browsing %s"
-- let g:presence_git_commit_text     = "Committing changes"
-- let g:presence_plugin_manager_text = "Managing plugins"
-- let g:presence_reading_text        = "Reading %s"
-- let g:presence_workspace_text      = "Working on %s"
-- let g:presence_line_number_text    = "Line %s out of %s"
