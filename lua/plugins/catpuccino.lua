-- lua/your_name/plugins/colorscheme.lua

return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- load before other UI plugins
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				integrations = {
					treesitter = true,
					telescope = true,
					mason = true,
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					which_key = true,
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
