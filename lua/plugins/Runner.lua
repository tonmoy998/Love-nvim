return {
  {
    -- Point to the ROOT of the plugin folder
    dir = "~/.config/nvim/custom/Runner",
    name = "Runner",
    lazy = false,
    config = function()
      -- This looks for ~/.config/nvim/custom/Runner/lua/Runner/init.lua
      require("Runner").setup()
    end,
  },
}
