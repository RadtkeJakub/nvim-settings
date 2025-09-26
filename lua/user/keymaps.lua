vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })

vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true }) -- Save file
vim.keymap.set("n", "<leader>q", ":q<CR>", { silent = true }) -- Quit file
vim.keymap.set("n", "<leader>x", ":x<CR>", { silent = true }) -- Save and quit

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move selected text down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move selected text up

vim.keymap.set("n", "<Tab>", ":bnext<CR>", { silent = true }) -- Next tab
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>", { silent = true }) -- Previous tab

vim.keymap.set("n", "n", "nzzzv") -- Center search
vim.keymap.set("n", "N", "Nzzzv") -- Center search (reverse)
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Scroll down but center
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Scroll up but center

-- Show diagnostics in a floating window with <Space>e
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, { noremap = true, silent = true })
vim.keymap.set("n", "<space>q", function()
	-- check if location list for current window is open
	local win_ids = vim.fn.getloclist(0, { winid = 0 }).winid
	if win_ids == 0 then
		-- location list closed → open it
		vim.diagnostic.setloclist()
	else
		-- location list open → close it
		vim.cmd("lclose")
	end
end, { noremap = true, silent = true })
