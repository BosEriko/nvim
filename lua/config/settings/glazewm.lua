
--------------------------------------------------------------------------------------- [glazewm] --

vim.cmd([[
augroup glazewm_config
autocmd!
autocmd BufWritePost ~/.files/glazewm/config.yaml !rm /mnt/c/Users/Bos/.glaze-wm/config.yaml && cp ~/.files/glazewm/config.yaml /mnt/c/Users/Bos/.glaze-wm/config.yaml
augroup end
]])
