return {
    "navarasu/onedark.nvim",
	opts = {
		style = "darker",
		toggle_style_key = "<leader>ts",
		toggle_style_list = {'dark', 'darker', 'deep', 'warm', 'warmer'}
	},
	config = function(_, opts)
		require("onedark").setup(opts)
		vim.cmd("colorscheme onedark")
	end
}
