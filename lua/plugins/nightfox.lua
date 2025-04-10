return {
	"EdenEast/nightfox.nvim",
	priority = 1000, -- load before all other plugins
	config = function()
		require("nightfox").setup({
			options = {
				transparent = true,
				styles = {
					comments = "italic",
					keywords = "bold",
					types = "italic,bold",
				},
			},
		})
		vim.cmd("colorscheme carbonfox") -- or "carbonfox", "nordfox", etc.
	end,
}
