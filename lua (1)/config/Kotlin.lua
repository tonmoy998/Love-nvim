local lspconfig = require("lspconfig")

lspconfig.kotlin_ls.setup({
  cmd = { "/usr/bin/kotlin-language-server" }, -- use your installed binary
  filetypes = { "kotlin" },
  root_dir = lspconfig.util.root_pattern("settings.gradle", "build.gradle", ".git"),
  on_attach = function(client, bufnr)
    local function buf_set_keymap(...)
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local opts = { noremap = true, silent = true }

    -- LSP keybindings
    buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    buf_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  end,
})
