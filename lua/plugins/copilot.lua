return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	build = ":Copilot auth",
	config = function()
		require("copilot").setup({
			suggestion = {
				enabled = true,
				auto_trigger = true,
				keymap = {
					accept = "<C-a>", -- use Ctrl+a instead of Tab
					accept_word = false,
					accept_line = false,
				},
			},
			panel = { enabled = false }, -- disable side panel if you don’t use it
		})
	end,
}
