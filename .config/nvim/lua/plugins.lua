-- Reload configurations when plugins.lua is saved
vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]])

return require("packer").startup(function(use)
	-- Packer
	use("wbthomason/packer.nvim")
	
	-- Common
	use("nvim-lua/plenary.nvim")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		requires = { {"nvim-lua/plenary.nvim"} }
	})

	-- Nvim tree
	use("nvim-tree/nvim-tree.lua")

	-- Nvim tree icons
	use("nvim-tree/nvim-web-devicons")

	-- Autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- Snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- Autopairs
	use("windwp/nvim-autopairs")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- Rainbow delimiter
	use("HiPhish/nvim-ts-rainbow2")

	-- Catppuccin color theme
	use("catppuccin/nvim")

	-- Nvim lualine
	use("nvim-lualine/lualine.nvim")

	-- VimTex
	-- use("lervag/vimtex")
end)
