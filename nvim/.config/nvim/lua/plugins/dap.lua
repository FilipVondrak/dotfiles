return {
  -- 1. The Core Debugger
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      -- 2. Mason integration to install adapters
      "jay-babu/mason-nvim-dap.nvim",

      -- 3. The Visual UI
      "rcarriga/nvim-dap-ui",
      
      "nvim-neotest/nvim-nio",
    },
    -- All config and keymaps are inside the `config` function
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      -- === Install Adapters with Mason ===
      -- This makes sure 'cppdbg' is installed
      require("mason-nvim-dap").setup({
        ensure_installed = { "cppdbg" },
        -- You can add other adapters here, like 'codelldb'
      })

      -- === Configure the UI ===
      dapui.setup()

      -- Open/Close UI on debug events
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      -- === Keymaps ===
      -- Set breakpoints
      vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })

      -- Start/Continue the debugger
      vim.keymap.set("n", "<Leader>ds", dap.continue, { desc = "Start/Continue Debugger" })
      vim.keymap.set("n", "<Leader>dr", dap.run_last, { desc = "Run Last Debug Session" })

      -- Step over, into, out
      vim.keymap.set("n", "<Leader>do", dap.step_over, { desc = "Step Over" })
      vim.keymap.set("n", "<Leader>di", dap.step_into, { desc = "Step Into" })
      vim.keymap.set("n", "<Leader>du", dap.step_out, { desc = "Step Out" })

      -- Toggle REPL
      vim.keymap.set("n", "<Leader>dt", dapui.toggle, { desc = "Toggle Debug UI" })
    end,
  },
}
