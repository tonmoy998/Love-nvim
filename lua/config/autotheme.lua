local hour = tonumber(os.date("%H"))
if hour >= 6 and hour < 18 then
  vim.cmd.colorscheme("catppuccin-latte") -- light
else
  vim.cmd.colorscheme("onedark") -- dark
end
