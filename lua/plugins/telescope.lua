return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    priority = 1000,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files", silent = true })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep", silent = true })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers", silent = true })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags", silent = true })
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      -- This is your opts table
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
