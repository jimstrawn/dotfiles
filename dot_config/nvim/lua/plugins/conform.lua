local function organize_go_imports(bufnr)
	local clients = vim.lsp.get_clients({
		bufnr = bufnr,
		name = "gopls",
	})

	if #clients == 0 then
		return
	end

	local params = vim.lsp.util.make_range_params()
	params.context = {
		only = { "source.organizeImports" },
		diagnostics = {},
	}

	local results = vim.lsp.buf_request_sync(bufnr, "textDocument/codeAction", params, 2000)

	for client_id, response in pairs(results or {}) do
		local client = vim.lsp.get_client_by_id(client_id)

		if client and client.name == "gopls" then
			for _, action in ipairs(response.result or {}) do
				if action.edit then
					vim.lsp.util.apply_workspace_edit(action.edit, client.offset_encoding)
				end
			end
		end
	end
end

return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		cmd = "ConformInfo",

		keys = {
			{
				"<leader>cf",
				function()
					require("conform").format({
						async = true,
						lsp_format = "fallback",
					})
				end,
				mode = { "n", "v" },
				desc = "Format code",
			},
		},

		opts = {
			formatters_by_ft = {
				go = { lsp_format = "prefer" },
				lua = { "stylua" },
				toml = { "taplo" },
			},

			default_format_opts = {
				lsp_format = "fallback",
			},

			format_on_save = function(bufnr)
				if vim.bo[bufnr].filetype == "go" then
					organize_go_imports(bufnr)
				end

				return {
					timeout_ms = 3000,
					lsp_format = "fallback",
				}
			end,
		},
	},
}
