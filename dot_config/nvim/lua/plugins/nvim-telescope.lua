return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	keys = {
		{
			"<leader>ff",
			"<cmd>Telescope find_files<cr>",
			desc = "Find files",
		},
		{
			"<leader>fg",
			"<cmd>Telescope live_grep<cr>",
			desc = "Find text",
		},
		{
			"<leader>fb",
			"<cmd>Telescope buffers<cr>",
			desc = "Find buffers",
		},
		{
			"<leader>fh",
			"<cmd>Telescope help_tags<cr>",
			desc = "Find help",
		},
		{
			"<leader>fr",
			"<cmd>Telescope oldfiles<cr>",
			desc = "Recent files",
		},
		{
			"<leader>fc",
			function()
				require("telescope.builtin").find_files({
					cwd = vim.fn.stdpath("config"),
					hidden = true,
				})
			end,
			desc = "Find Neovim config",
		},
	},
}
