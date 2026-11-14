return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",

	opts = {},

	init = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"go",
				"gomod",
				"gosum",
				"gowork",
				"lua",
				"toml",
				"vim",
				"vimdoc",
			},
			callback = function(event)
				if vim.treesitter.get_parser(event.buf) then
					vim.treesitter.start(event.buf)
				end
			end,
		})
	end,

	config = function()
		require("nvim-treesitter").setup({})

		require("nvim-treesitter").install({
			"go",
			"gomod",
			"gosum",
			"gowork",
			"lua",
			"toml",
			"vim",
			"vimdoc",
		})
	end,
}
