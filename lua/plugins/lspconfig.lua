return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "dockerls",
          "clangd",
          "emmet_language_server"
        },
      }
    end
  },
  {
    -- change import names after changing filename.
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-tree.lua",
    },
    config = function()
      require("lsp-file-operations").setup({})
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')

      lspconfig.lua_ls.setup({ on_attach = require("lsp-format").on_attach })
      lspconfig.ts_ls.setup({ on_attach = require("lsp-format").on_attach })
      lspconfig.dockerls.setup({ on_attach = require("lsp-format").on_attach })
      lspconfig.clangd.setup({ on_attach = require("lsp-format").on_attach })
      lspconfig.emmet_language_server.setup({ on_attach = require("lsp-format").on_attach })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { silent = true })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { silent = true })
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { silent = true })
      vim.keymap.set("n", "<leader>li", ":LspInfo<CR>", { silent = true })
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { silent = true })
    end,
  }
}
