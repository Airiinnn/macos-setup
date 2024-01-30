require("keymaps")
require("settings")
require("plugins")
require("nvim-cmp")
require("autopairs")
require("treesitter")

vim.cmd("colorscheme catppuccin")

require("nvim-tree").setup()
require("lualine").setup()

-- Disable comment continuation
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

