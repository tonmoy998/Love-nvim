local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT", -- ✅ correct for Neovim
      },

      diagnostics = {
        globals = { "vim", "love" },
      },

      workspace = {
        library = vim.tbl_extend(
          "force",
          vim.api.nvim_get_runtime_file("", true), -- ✅ Neovim runtime
          {
            vim.fn.expand("~/.local/share/LuaAddons/love/api"), -- LOVE2D EmmyLua
          }
        ),
        checkThirdParty = false,
      },

      telemetry = {
        enable = false,
      },
    },
  },
})
