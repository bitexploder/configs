return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = {"BufReadPre", "BufNewFile"},

    config = function ()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            highlight = {enable = true},
            ensured_installed = {
                "c",
                "cpp",
                "python",
                "go",
                "gomod",
				"lua",
				"vimdoc",
				"ruby",
            },
            rainbow = {
                enable = true,
                disable = { "html" },
                extended_mode = false,
                max_file_lines = nil,
            },
        })
    end
}
