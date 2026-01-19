return {
  -- DAP core
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "jbyuki/one-small-step-for-vimkind",
    },
    lazy = false,
    config = function()
      -- Put the suggested configuration here
    end,
  },

  -- DAP UI
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "nvim-neotest/nvim-nio" },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "Toggle DAP UI" })
      vim.keymap.set({ "n", "v" }, "<leader>de", dapui.eval, { desc = "DAP Eval" })
    end,
  },
}
