return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {},
  config = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "tab" })
    local yazi = Terminal:new({ cmd = "yazi", hidden = true, direction = "tab" })
    local btop = Terminal:new({ cmd = "btop", hidden = true, direction = "tab" })
    local mongosh = Terminal:new({ cmd = "mongosh", hidden = true, direction = "tab" })
    local mongoshCloud = Terminal:new({
      cmd =
      'mongosh "mongodb+srv://cluster0.twwisxz.mongodb.net/" --apiVersion 1 --username noob-programmer9012 --password postgres',
      hidden = true,
      direction = "tab",
    })
    local lazydocker = Terminal:new({ cmd = "lazydocker", hidden = true, direction = "tab" })
    -- local ollama = Terminal:new({ cmd = "ollama run llama3.2", hidden = true, direction = "tab" })
    -- local ollamastart = Terminal:new({ cmd = "sudo systemctl start ollama", hidden = true, direction = "tab" })
    -- local ollamastop = Terminal:new({ cmd = "sudo systemctl stop ollama", hidden = true, direction = "tab" })

    function Lazygit_toggle()
      lazygit:toggle()
    end

    function Yazi_toggle()
      yazi:toggle()
    end

    function Lazydocker_toggle()
      lazydocker:toggle()
    end

    function Btop_toggle()
      btop:toggle()
    end

    function Mongosh_toggle()
      mongosh:toggle()
    end

    function MongoshCloud_toggle()
      mongoshCloud:toggle()
    end

    -- function Ollama_toggle()
    -- 	ollama:toggle()
    -- end
    --
    -- function Ollama_Start()
    -- 	ollamastart:toggle()
    -- end
    --
    -- function OllamaStop_toggle()
    -- 	ollamastop:toggle()
    -- end

    require("toggleterm").setup({
      size = 30,
      open_mapping = [[<c-\>]],
      direction = "tab",
      float_opts = {
        border = "curved",
        width = 130,
        height = 35,
      },
    })

    vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua Lazygit_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>gy", "<cmd>lua Yazi_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>gd", "<cmd>lua Lazydocker_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>gb", "<cmd>lua Btop_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>gm", "<cmd>lua Mongosh_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap(
      "n",
      "<leader>gmm",
      "<cmd>lua MongoshCloud_toggle()<CR>",
      { noremap = true, silent = true }
    )
    -- vim.api.nvim_set_keymap("n", "<leader>go", "<cmd>lua ollama_toggle()<cr>", { noremap = true, silent = true })
    -- vim.api.nvim_set_keymap("n", "<leader>gos", "<cmd>lua ollama_start()<cr>", { noremap = true, silent = true })
    -- vim.api.nvim_set_keymap(
    -- 	"n",
    -- 	"<leader>gss",
    -- 	"<cmd>lua ollamastop_toggle()<cr>",
    -- 	{ noremap = true, silent = true }
    -- )
  end,
}
