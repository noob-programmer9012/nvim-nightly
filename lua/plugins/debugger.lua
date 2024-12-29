return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
      },
      "theHamsta/nvim-dap-virtual-text",
    },

    config = function()
      local dap, dapui = require("dap"), require("dapui")

      dapui.setup()
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      dap.adapters.cppdbg = {
        id = "cppdbg",
        type = "executable",
        command = "/home/blackburn/Downloads/CPPTools/extension/debugAdapters/bin/OpenDebugAD7",
      }

      dap.configurations.cpp = {
        {
          name = "Launch file",
          type = "cppdbg",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = true,
          setupCommands = {
            {
              text = "-enable-pretty-printing",
              description = "enable pretty printing",
              ignoreFailures = false,
            },
          },
        },
      }

      dap.configurations.c = dap.configurations.cpp

      vim.keymap.set("n", "<Leader>bd", dap.toggle_breakpoint, { silent = true })
      vim.keymap.set("n", "<Leader>B", dap.set_breakpoint, { silent = true })
      vim.keymap.set("n", "<F5>", dap.continue, { silent = true })
      vim.keymap.set("n", "<F7>", dap.step_over, { silent = true })
      vim.keymap.set("n", "<F6>", dap.step_into, { silent = true })
      vim.keymap.set("n", "<F9>", dap.step_out, { silent = true })
      vim.keymap.set("n", "<leader>bc", dapui.close, { silent = true })
    end,
  },
}
