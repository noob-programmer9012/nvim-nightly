return {
  'stevearc/resession.nvim',
  config = function()
    local resession = require("resession")
    resession.setup({
      autosave = {
        enabled = false,
        -- How often to save (in seconds)
        interval = 300,
        -- Notify when autosaved
        notify = true,
      },
      -- Save and restore these options
      options = {
        "binary",
        "bufhidden",
        "buflisted",
        "cmdheight",
        "diff",
        "filetype",
        "modifiable",
        "previewwindow",
        "readonly",
        "scrollbind",
        "winfixheight",
        "winfixwidth",
      },
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

--     Old text                    Command         New text
-- --------------------------------------------------------------------------------
--     surr*ound_words             ysiw)           (surround_words)
--     *make strings               ys$"            "make strings"
--     [delete ar*ound me!]        ds]             delete around me!
--     remove <b>HTML t*ags</b>    dst             remove HTML tags
--     'change quot*es'            cs'"            "change quotes"
--     <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
--     delete(functi*on calls)     dsf             function calls
--     bracket around select       Sb              (this is demo)
--     curly bracket around        S{/[               { this is demo }
