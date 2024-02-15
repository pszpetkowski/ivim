return {
	"nvim-telescope/telescope.nvim",
	config = function()
		telescope = require("telescope")
		telescope.setup()
		telescope.load_extension("fzf")
	end,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
}
