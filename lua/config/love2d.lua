require("lspconfig").lua_ls.setup({
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT", -- LÖVE uses LuaJIT
        path = vim.split(package.path, ";"),
      },
      diagnostics = {
        globals = { "love" }, -- Don't show "undefined global" for 'love'
      },
      workspace = {
        library = {
          vim.fn.expand("~/.local/share/LuaAddons/love/api"), -- or wherever EmmyLua love2d defs are
        },
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
})
