local function lsp_name()
  local msg = "No LSP"
  local buf_ft = vim.bo.filetype
  local clients = vim.lsp.get_active_clients({ bufnr = 0 })

  if next(clients) == nil then
    return msg
  end

  for _, client in ipairs(clients) do
    local filetypes = client.config.filetypes
    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
      return " " .. client.name
    end
  end

  return msg
end

require("lualine").setup({
  sections = {
    lualine_x = { lsp_name },
  },
})
