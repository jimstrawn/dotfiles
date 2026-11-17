return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		on_attach = function(bufnr)
			local gitsigns = require("gitsigns")
			local function map(mode, lhs, rhs, desc)
				vim.keymap.set(mode, lhs, rhs, {
					buffer = bufnr,
					desc = desc,
				})
			end

			map("n", "]c", function()
				if vim.wo.diff then
					vim.cmd.normal({ args = { "]c" }, bang = true })
				else
					gitsigns.nav_hunk("next")
				end
			end, "Next change")

			map("n", "[c", function()
				if vim.wo.diff then
					vim.cmd.normal({ args = { "[c" }, bang = true })
				else
					gitsigns.nav_hunk("prev")
				end
			end, "Previous change")

			map("n", "<leader>hs", gitsigns.stage_hunk, "Stage hunk")
			map("n", "<leader>hr", gitsigns.reset_hunk, "Reset hunk")
			map("v", "<leader>hs", function()
				gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Stage selected hunk")
			map("v", "<leader>hr", function()
				gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Reset selected hunk")

			map("n", "<leader>hS", gitsigns.stage_buffer, "Stage buffer")
			map("n", "<leader>hR", gitsigns.reset_buffer, "Reset buffer")
			map("n", "<leader>hp", gitsigns.preview_hunk, "Preview hunk")
			map("n", "<leader>hi", gitsigns.preview_hunk_inline, "Preview hunk inline")
			map("n", "<leader>hb", function()
				gitsigns.blame_line({ full = true })
			end, "Blame line")
			map("n", "<leader>hd", gitsigns.diffthis, "Diff against index")
			map("n", "<leader>hD", function()
				gitsigns.diffthis("~")
			end, "Diff against previous commit")
			map("n", "<leader>hq", gitsigns.setqflist, "List buffer hunks")
			map("n", "<leader>hQ", function()
				gitsigns.setqflist("all")
			end, "List repository hunks")

			map("n", "<leader>tb", gitsigns.toggle_current_line_blame, "Toggle line blame")
			map("n", "<leader>tw", gitsigns.toggle_word_diff, "Toggle word diff")
			map({ "o", "x" }, "ih", gitsigns.select_hunk, "Select hunk")
		end,
	},
}
