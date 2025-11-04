-- lua/plugins/indent.lua
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "│",
      tab_char = "│",
    },
    scope = {
      enabled = false, -- disable weird scope highlight that shifts
    },
  },
}
