return {
	"mbbill/undotree",
	config = function()
		vim.g.undotree_WindowLayout = 2
		vim.keymap.set("n", "<leader>ud", vim.cmd.UndotreeToggle)
	end,
}
