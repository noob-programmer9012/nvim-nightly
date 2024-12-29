return {
	"m4xshen/autoclose.nvim",
	config = function()
		require("autoclose").setup({
			keys = {
				["<"] = {
					escape = true,
					close = true,
					pair = "<>",
					enabled_filetypes = { "html", "javascriptreact", "handlebars" },
				},
			},
		})
	end,
}
