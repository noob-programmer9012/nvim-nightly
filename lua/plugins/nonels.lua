return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.diagnostics.hadolint, -- Keep hadolint for Dockerfile linting
      null_ls.builtins.formatting.clang_format,
      null_ls.builtins.formatting.prettier.with({
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "css",
          "scss",
          "html",
          "handlebars",
          "json",
          "yaml",
          "markdown",
          "graphql",
          "md",
          "txt",
          "dockerfile", -- Add dockerfile to prettier filetypes
        },
      }),
    })
  end
}
