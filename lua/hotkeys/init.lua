
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
-- nnoremap <silent> <C-c> :TComment<CR>
-- nnoremap <silent> <C-k> :!open -a firefox "https://boseriko-professional.notion.site/boseriko-professional/92045538d4be4360a6486d9d8d5178aa?v=b50d8f4a46a748a19cd7988e1d235a2e" --args --kiosk<CR>
-- nnoremap <silent> <C-b> :let @+ = expand("%")<CR>
-- nnoremap <C-f> :CtrlSF<space>
-- nnoremap <C-g> :%s/old/new/g
-- nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

-- Leader Shortcuts
-- nnoremap <silent> <leader>d :Dash!<CR>
-- nnoremap <silent> <leader>e :PlugInstall!<CR>
-- nnoremap <silent> <leader>g :Git blame<CR>
map("n", "<leader>l", ":set list!<CR>", { silent = true })
map("n", "<leader>n", ":noh<CR>", { silent = true })
map("n", "<leader>o", ":'<,'>sort<CR>", { silent = true })
-- nnoremap <silent> <leader>r :g/^/m0<CR>
-- nnoremap <silent> <leader>s :Startify<CR>
-- nnoremap <silent> <leader>t :ToggleWorkspace<CR>
map("n", "<leader>w", ":set wrap!<CR>", { silent = true })
-- set pastetoggle=<leader>p
