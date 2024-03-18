
--------------------------------------------------------------------------------------- [symlink] --

-- glazewm
vim.cmd([[
augroup glazewm_config
autocmd!
autocmd BufWritePost ~/.files/glazewm/config.yaml !~/.files/scripts/update-glazewm-yaml.sh
augroup end
]])
