return {
	"folke/noice.nvim",
	config = function()
		require("noice").setup({
			routes = {
				{
					view = "notify",
					filter = { event = "msg_showmode" },
				},
			},
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	event = "VeryLazy",
}
