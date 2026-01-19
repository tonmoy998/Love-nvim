-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.cmd([[
augroup code_exec
autocmd!
autocmd FileType php nnoremap <buffer> <leader>r :term sudo php -S localhost:8081<CR>
autocmd FileType lua nnoremap <buffer> <leader>l :FloatermNew --autoclose=0 love .<CR>
autocmd FileType html,css,scss,less nnoremap <buffer> <leader>r :term live-server<CR>

augroup END
]])
