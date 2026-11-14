return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"gopls",
				"lua_ls",
				"taplo",
				"marksman",
				"jsonls",
			},
			automatic_enable = true,
		},
		dependencies = {
			{
				"mason-org/mason.nvim",
				opts = {},
			},
			"neovim/nvim-lspconfig",
		},
	},
}
