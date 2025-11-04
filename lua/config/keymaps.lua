-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Shorten function name

--Remap space as leader key

keymap("", "<Space>", "<Nop>", opts)
vim.cmd([[
set termguicolors
set tabstop=8
set shiftwidth=2
set softtabstop=2
set clipboard=unnamedplus
set nowrap
" Remap j to move down
" Remap k to move up
set smarttab
colorscheme tokyonight-night
nnoremap <S-k> :bnext<CR>
nnoremap <C-d> :bd!<CR>
nnoremap <TAB> :bnext<CR>
nnoremap <S-j> :bprev<CR>




"VIM MULTI CURSOR"
""let g:multi_cursor_use_default_mapping=0

" Default mapping
""let g:multi_cursor_start_word_key      = '<C-n>'
""let g:multi_cursor_select_all_word_key = '<A-n>'
""let g:multi_cursor_start_key           = 'g<C-n>'
""let g:multi_cursor_select_all_key      = 'g<A-n>'
""let g:multi_cursor_next_key            = '<C-n>'
""let g:multi_cursor_prev_key            = '<C-p>'
""let g:multi_cursor_skip_key            = '<C-x>'
""let g:multi_cursor_quit_key            = '<Esc>'
" Example colors for Coc.nvim popups with a red border
" Example: Change CocFloating border color to red
"highlight CocFloatingBorder guibg=NONE guifg=#ff0000

]])

keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
keymap("i", "jj", "<ESC>", opts)
keymap("i", "kk", "<ESC>", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<A-s>", ":tab term live-server<CR>", opts) -- OPEN TERMINAL IN THE NEW TAB
keymap("n", "<C-q>", ":q!<CR>", opts)
keymap("n", "<C-d>", ":bd!<CR>", opts)
keymap("n", "<C-s>", ":w!<CR>", opts)
keymap("n", "<c-t>", ":terminal<CR>", opts)
keymap("n", "<leader>c", ":VCoolor<CR>", opts)
keymap("n", "<leader>vc", ":%d<CR>", opts)
keymap("n", "<leader>fc", ":FzfLua colorschemes<CR>", opts)
keymap("n", "<leader>fw", ":FzfLua live_grep<CR>", opts)
keymap("n", "<leader>fi", ":Nerdy<CR>", opts)
keymap("n", "<leader><space>", ":FzfLua files<CR>", opts)

-- "Emmet setting
-- autocmd FileType html autocmd BufWritePre <buffer> call HtmlBeautify()
-- autocmd FileType html autocmd BufWritePre <buffer> call tagalong#Apply()
-- filetype plugin on
-- filetype indent on
-- set nowrap
-- set autoindent
-- set tabstop=4
-- set shiftwidth=2
-- set smarttab
-- set softtabstop=2
-- set mouse=a
-- set nocompatible
-- filetype on
-- syntax enable
-- set signcolumn=yes
-- set hidden
-- set cursorline
-- set nowrap
