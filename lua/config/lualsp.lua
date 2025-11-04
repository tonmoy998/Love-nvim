require("lspconfig").lua_ls.setup({
  settings = {
    Lua = {
      runtime = {
        version = "Lua 5.4",
        path = vim.split(package.path, ";"),
      },
      workspace = {
        library = {
          vim.env.VIMRUNTIME,
          "/usr/local/share/lua/5.4",
          "/usr/share/lua/5.4",
          "/usr/local/lib/lua/5.4",
          "/usr/lib/lua/5.4",
          vim.fn.expand("~/.local/share/LuaAddons/love/api"), -- or wherever EmmyLua love2d defs are
        },
        checkThirdParty = false,
      },
      diagnostics = {
        globals = { "vim", "love" },
      },
    },
  },
})
