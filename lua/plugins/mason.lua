return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		-- Initialize Mason
		require("mason").setup()

		-- Ensure the specified LSP servers are installed
		require("mason-lspconfig").setup({
			dependencies = {
				"williamboman/mason.nvim", -- must load after mason.nvim
			},
			ensure_installed = {
				"ts_ls", -- TypeScript / JavaScript
				"gopls", -- Go
				"lua_ls", -- Lua
			},
			automatic_installation = true, -- Automatically install LSP servers if not installed
		})
	end,
}
