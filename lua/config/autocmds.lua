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
autocmd FileType php nnoremap <buffer> <leader>r :term sudo php -S localhost:8080<CR>
autocmd FileType python nnoremap <buffer> <leader>r :FloatermNew --autoclose=0 python3 % <CR>
autocmd FileType javascript nnoremap <buffer> <leader>r :FloatermNew --autoclose=0 nodejs % <CR>
autocmd FileType bash,sh nnoremap <buffer> <leader>r :FloatermNew --autoclose=0 bash % <CR>
autocmd FileType lua nnoremap <buffer> <leader>r :FloatermNew --autoclose=0  lua % <CR>
" autocmd FileType lua nnoremap <buffer> <leader>r :FloatermNew --autoclose=0 --width=600 --height=720 lua % <CR>
autocmd FileType lua nnoremap <buffer> <leader>l :FloatermNew --autoclose=0 love .<CR>
autocmd FileType html,css,scss,less nnoremap <buffer> <leader>r :term live-server<CR>


autocmd FileType php nnoremap <buffer> <F5> :FloatermNew --autoclose=0 php % <CR>
autocmd FileType python nnoremap <buffer> <F5> :FloatermNew --autoclose=0 python3 % <CR>
autocmd FileType javascript nnoremap <buffer> <F5> :FloatermNew --autoclose=0 nodejs % <CR>
autocmd FileType lua nnoremap <buffer> <F5> :FloatermNew --autoclose=0 lua % <CR>

augroup END
]])
