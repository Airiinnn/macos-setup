-- Import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- Configure treesitter
treesitter.setup({
	-- Enable syntax highlighting
	highlight = {
		enable = true,
	},
	-- Enable indentation
	indent = { enable = false },
	-- Ensure these language parsers are installed
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"yaml",
		"html",
		"css",
		"markdown",
		"markdown_inline",
	    "bash",
	    "lua",
	    "vim",
		"python",
		"java",
		"c",
		"cpp",
		"dockerfile",
		"gitignore",
		"scala",
		"sql"
	},
	-- Auto install above language parsers
	auto_install = true,

	-- Enable rainbow parentheses
	rainbow = { enable = true }
})
