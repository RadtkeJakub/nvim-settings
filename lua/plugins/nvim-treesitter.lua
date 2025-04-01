local M = {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
	keys = {
		{ "tt", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" },
	},
}

return { M }
