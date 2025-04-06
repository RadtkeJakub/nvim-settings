return {
	"williamboman/mason.nvim",
	config = function()
		-- Initialize Mason
		require("mason").setup()

		-- Ensure the specified LSP servers are installed
		require("mason-lspconfig").setup({
			ensure_installed = {
				"ts_ls", -- For TypeScript
				"gopls", -- For Go
				"lua_ls", -- For Lua
			},
			automatic_installation = true, -- Automatically install LSP servers if not installed
		})
	end,
}
