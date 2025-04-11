return {

	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- for file icons
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({

			event_handlers = {

				{
					event = "file_open_requested",
					handler = function()
						-- auto close
						-- vim.cmd("Neotree close")
						-- OR
						require("neo-tree.command").execute({ action = "close" })
					end,
				},
			},

			window = {
				position = "left",
				width = 30,
				mappings = {
					["<space>"] = "none", -- prevent accidental collapse
					["S"] = "open_split", -- horizontal
					["s"] = "open_vsplit", -- vertical
				},
			},
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = true,
				},
			},
		})

		-- Keymap like in the video
		vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>", {})
	end,
}
