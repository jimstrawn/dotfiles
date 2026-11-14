return {
	{
		"saghen/blink.cmp",
		version = "1.*",
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
		opts = {
			keymap = {
				preset = "default",

				["<CR>"] = { "accept", "fallback" },

				["<C-n>"] = { "select_next", "fallback" },
				["<C-p>"] = { "select_prev", "fallback" },

				["<Tab>"] = { "snippet_forward", "fallback" },
				["<S-Tab>"] = { "snippet_backward", "fallback" },
			},
			completion = {
				list = {
					selection = {
						preselect = false,
					},
				},
			},
		},
	},
}
