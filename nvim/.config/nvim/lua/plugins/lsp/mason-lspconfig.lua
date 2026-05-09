return {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    dependencies = {
        "mason-org/mason.nvim",
        "neovim/nvim-lspconfig",
    },
	opts = {
		ensure_installed = { "lua_ls" },
	},
	keys = {
		{
			"<leader>lf",
			"<cmd>lua vim.lsp.buf.format()<cr>",
			desc = "Uses active ls to format current buffer",
		},
        {
			"<leader>le",
			"<cmd>lua vim.diagnostic.open_float()<cr>",
			desc = "Uses active ls to format current buffer",
		},
        {
			"<leader>la",
			"<cmd>lua vim.lsp.buf.code_actions()<cr>",
			desc = "Uses active ls to format current buffer",
		}
	},
}
