return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      -- only required if colorscheme transparent is set to true
      background_colour = "#000000"
    })
  end
}
