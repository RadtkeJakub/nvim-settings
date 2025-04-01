return {
	"williamboman/mason.nvim",
	config = function()
		-- Initialize Mason
		require("mason").setup()

		-- Ensure the specified LSP servers are installed
		require("mason-lspconfig").setup({
			ensure_installed = {
				"typescript-language-server", -- For TypeScript
				"gopls", -- For Go
				"lua-language-server", -- For Lua
			},
			automatic_installation = true, -- Automatically install LSP servers if not installed
		})
	end,
}
