return {
	"epwalsh/obsidian.nvim",
	config = function(_, opts)
		require("obsidian").setup(opts)
		--local builtin = require("obsidian.builtin")
		vim.keymap.set("n", "<leader>of", "<cmd>ObsidianFollowLink<CR>", {})
		vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianTags<CR>", {})
	end,
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	opts = {
		ui = {
			enable = true
		},
		workspaces = {
			{
				name = "primary",
				path = "/mnt/c/Users/Jeremy/Documents/Primary"
			},
		},
	}
}
