if vim.g.neovide then
  vim.o.guifont = "DroidSansM Nerd Font Mono:h14"
  vim.g.neovide_scroll_animation_far_lines = 1
  vim.g.neovide_scroll_animation_length = 0.3
  vim.opt.clipboard = "unnamedplus"

  -- Map Ctrl+Shift+V to paste from system clipboard
  vim.keymap.set("n", "<C-S-v>", '"+p', { noremap = true, silent = true })
  vim.keymap.set("i", "<C-S-v>", "<C-R>+", { noremap = true, silent = true })
  vim.keymap.set("v", "<C-S-v>", '"+p', { noremap = true, silent = true })
  vim.cmd([[
    let g:neovide_scale_factor = 1.35
  ]])
  vim.g.neovide_padding_top = 10
end
