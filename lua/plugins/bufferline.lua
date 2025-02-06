return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup({
      -- highlights = {
      --   fill = {},
      --   tab = {},
      --   background = {
      --     -- fg = '#fff',
      --     bg = {
      --       attribute = "bg",
      --       highlight = "#FFFFFF"
      --     }
      --   }
      -- },

      options = {
        separator_style = "slant", -- or try slope
        themable = true,
        diagnostics = "nvim_lsp",
        modified_icon = "+",
        diagnostics_update_on_event = true, -- use nvim's diagnostic handler
        -- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting
        -- diagnostics_indicator = function(count, level, diagnostics_dict, context)
        --   return "(" .. count .. ")"
        -- end,

        offsets = {
          {
            filetype = "NvimTree",
            text = function()
              return vim.fn.getcwd()
            end,
            highlight = "Directory",
            separator = true, -- use a "true" to enable the default, or set your own character
          },
        },
      },
    })
    vim.keymap.set("n", "<leader>be", ":BufferLinePickClose<CR>", { silent = true })
    vim.keymap.set("n", "<leader>bj", ":BufferLinePick<CR>", { silent = true })
    vim.keymap.set("n", "<leader>ba", ":BufferLineCloseOthers<CR>", { silent = true })
    vim.keymap.set("n", "<leader>bh", ":BufferLineCloseLeft<CR>", { silent = true })
    vim.keymap.set("n", "<leader>bl", ":BufferLineCloseRight<CR>", { silent = true })
    vim.keymap.set("n", "<leader>bb", ":BufferLineCyclePrev<CR>", { silent = true })
    vim.keymap.set("n", "<leader>bn", ":BufferLineCycleNext<CR>", { silent = true })
    vim.keymap.set("n", "<leader>1", ":BufferLineGoToBuffer1<CR>", { silent = true })
    vim.keymap.set("n", "<leader>2", ":BufferLineGoToBuffer2<CR>", { silent = true })
    vim.keymap.set("n", "<leader>3", ":BufferLineGoToBuffer3<CR>", { silent = true })
    vim.keymap.set("n", "<leader>4", ":BufferLineGoToBuffer4<CR>", { silent = true })
    vim.keymap.set("n", "<leader>5", ":BufferLineGoToBuffer5<CR>", { silent = true })
    vim.keymap.set("n", "<leader>6", ":BufferLineGoToBuffer6<CR>", { silent = true })
    vim.keymap.set("n", "<leader>7", ":BufferLineGoToBuffer7<CR>", { silent = true })
    vim.keymap.set("n", "<leader>8", ":BufferLineGoToBuffer8<CR>", { silent = true })
    vim.keymap.set("n", "<leader>9", ":BufferLineGoToBuffer9<CR>", { silent = true })
    -- vim.cmd('hi BufferLineFill guibg=#1a1a1a')
  end,
}
--

-- barbar
--
-- return {
--   'romgrk/barbar.nvim',
--   dependencies = {
--     'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
--     'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
--   },
--   init = function()
--     vim.g.barbar_auto_setup = false
--     vim.cmd('hi BufferTabpageFill guibg=#161616')
--     -- vim.cmd('hi BufferTabpages guibg=#FFF')
--
--     local map = vim.api.nvim_set_keymap
--     local opts = { noremap = true, silent = true }
--
--     -- Move to previous/next
--     map('n', '<leader>bb', '<Cmd>BufferPrevious<CR>', opts)
--     map('n', '<leader>bn', '<Cmd>BufferNext<CR>', opts)
--
--
--     -- Goto buffer in position...
--     map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
--     map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
--     map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
--     map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
--     map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
--     map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
--     map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
--     map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
--     map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
--     map('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)
--
--     -- close buffer
--     map('n', '<leader>q', '<Cmd>BufferClose<CR>', opts)
--
--     -- Magic buffer-picking mode
--     map('n', '<leader>bj', '<Cmd>BufferPick<CR>', opts)
--     map('n', '<leader>bjq', '<Cmd>BufferPickDelete<CR>', opts)
--   end,
--   opts = {
--     animation = true,
--     clickable = true,
--     highlight_alternate = true,
--
--     -- Disable highlighting file icons in inactive buffers
--     highlight_inactive_file_icons = false,
--
--     -- Enable highlighting visible buffers
--     highlight_visible = false,
--
--     sidebar_filetypes = {
--       NvimTree = true,
--     },
--     icons = {
--       preset = 'default',
--
--       -- Configure the base icons on the bufferline.
--       -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
--       buffer_index = false,
--       buffer_number = true,
--       button = '',
--       -- Enables / disables diagnostic symbols
--       diagnostics = {
--         [vim.diagnostic.severity.ERROR] = { enabled = true, icon = 'ﬀ' },
--         [vim.diagnostic.severity.WARN] = { enabled = false },
--         [vim.diagnostic.severity.INFO] = { enabled = false },
--         [vim.diagnostic.severity.HINT] = { enabled = true },
--       },
--       gitsigns = {
--         added = { enabled = true, icon = '+' },
--         changed = { enabled = true, icon = '~' },
--         deleted = { enabled = true, icon = '-' },
--       },
--     }
--   },
--   version = '^1.0.0', -- optional: only update when a new 1.x version is released
-- }
