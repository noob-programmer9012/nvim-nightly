return {
  'stevearc/resession.nvim',
  config = function()
    local resession = require("resession")
    resession.setup({
      barbar = {},
    })
    vim.api.nvim_create_autocmd("VimLeavePre", {
      callback = function()
        -- Always save a special session named "last"
        resession.save("last")
      end,
    })
    -- Resession does NOTHING automagically, so we have to set up some keymaps
    vim.keymap.set("n", "<leader>ss", resession.save)
    vim.keymap.set("n", "<leader>sl", resession.load)
    vim.keymap.set("n", "<leader>sd", resession.delete)
  end
}
