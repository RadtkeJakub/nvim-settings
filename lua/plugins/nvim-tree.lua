return {
	"nvim-tree/nvim-tree.lua",
	version = "*", -- Use the latest version
	lazy = false, -- Disable lazy loading for nvim-tree (change to `true` if you want lazy loading)
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- Required for file icons
	},
	config = function()
		-- Set up nvim-tree with your custom configuration
		require("nvim-tree").setup({
			view = {
				adaptive_size = true,
			},
			update_focused_file = {
				enable = true,
			},
			actions = {
				open_file = {
					quit_on_open = true,
				},
			},
			diagnostics = {
				enable = true, -- Enable diagnostics in nvim-tree
				icons = {
					hint = "", -- Icon for hints
					info = "", -- Icon for info
					warning = "", -- Icon for warnings
					error = "", -- Icon for errors
				},
			},
		})
	end,
}
