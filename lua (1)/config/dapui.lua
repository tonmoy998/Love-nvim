-- Add watch
vim.keymap.set("n", "<leader>dww", function()
  require("dapui").elements.watches.add()
end)

-- Remove watch
vim.keymap.set("n", "<leader>dwr", function()
  require("dapui").elements.watches.remove()
end)
