return {
	"khoido2003/monokai-v2.nvim",
	priority = 1000,
	config = function()
		require("monokai-v2").setup({
			transparent_background = false,
			terminal_colors = true,
			devicons = false,
		})
		vim.cmd("colorscheme monokai-v2")
	end,
}
