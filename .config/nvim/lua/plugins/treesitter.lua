return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"bash",
				"git_config",
				"gitcommit",
				"gitignore",
				"javascript",
				"json",
				"lua",
				"typescript",
				"vim",
				"vimdoc",
			},

			highlight = { enable = true },
			indent = { enable = true },
			sync_install = false,
		})
	end,
}
