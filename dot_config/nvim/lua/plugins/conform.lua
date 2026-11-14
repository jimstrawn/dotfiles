local function organize_go_imports(bufnr)
	local clients = vim.lsp.get_clients({
		bufnr = bufnr,
		name = "gopls",
	})

	if #clients == 0 then
		return
	end

	local client = clients[1]
	local start = { line = 0, character = 0 }
	local response = client:request_sync("textDocument/codeAction", {
		textDocument = vim.lsp.util.make_text_document_params(bufnr),
		range = { start = start, ["end"] = start },
		context = { only = { "source.organizeImports" }, diagnostics = {} },
	}, 2000, bufnr)

	for _, action in ipairs(response and response.result or {}) do
		if action.edit then
			vim.lsp.util.apply_workspace_edit(action.edit, client.offset_encoding)
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
				json = { "prettier" },
				lua = { "stylua" },
				markdown = { "prettier" },
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
