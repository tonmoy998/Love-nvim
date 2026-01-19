local filepath = vim.api.nvim_buf_get_name(0)
local filename = vim.fn.fnamemodify(filepath, ":t")

print(filename)

vim.api.nvim_create_user_command("Greet", function()
  print(filepath)
end, { desc = "A sample autocmd" })
