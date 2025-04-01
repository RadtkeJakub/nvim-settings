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
			renderer = {
				icons = {
					glyphs = {
						folder = {
							arrow_open = "", -- Custom open folder icon
							arrow_closed = "", -- Custom closed folder icon
						},
						file = {
							default = "", -- Default file icon
							symlink = "", -- Symlink icon
						},
					},
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
