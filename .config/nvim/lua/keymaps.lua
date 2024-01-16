-- Common options
local opts = {
	noremap = true,
	silent = true,
}

-- Window navigation
vim.keymap.set('n', "<C-A-h>", "<C-w>h", opts)
vim.keymap.set('n', "<C-A-j>", "<C-w>j", opts)
vim.keymap.set('n', "<C-A-k>", "<C-w>k", opts)
vim.keymap.set('n', "<C-A-l>", "<C-w>l", opts)

-- Telescope
vim.keymap.set('n', "<C-A-d>", ":Telescope find_files<CR>", opts)
vim.keymap.set('n', "<C-A-f>", ":Telescope live_grep<CR>", opts)

-- Nvim tree
vim.keymap.set('n', "<C-A-e>", ":NvimTreeToggle<CR>", opts)
