return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader><space>",
        function()
          Snacks.picker.files()
        end,
        desc = "Find Files",
      },
      {
        "<leader>fw",
        function()
          Snacks.picker.grep()
        end,
        desc = "Grep Project",
      },
      {
        "<leader>fC",
        function()
          Snacks.picker.colorschemes()
        end,
        desc = "Colorschemes with Preview",
      },
      {
        "<leader>fg",
        function()
          Snacks.picker.git_files()
        end,
        desc = "Find Git Files",
      },
      {
        "<leader>fr",
        function()
          Snacks.picker.recent()
        end,
        desc = "Recent Files",
      },
      {
        "<leader>fp",
        function()
          Snacks.picker.projects()
        end,
        desc = "Projects",
      },
    },
    opts = {
      image = {
        enabled = true, -- Enable the image module
        doc = {
          -- This enables inline image rendering for supported filetypes
          enabled = true,
          inline = true, -- Render inside the buffer (works best on Kitty)
          float = false, -- Disable floating window if using inline
          max_width = 80,
          max_height = 40,
        },
      },
    },
  },
}
