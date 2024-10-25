return {
    "nvim-telescope/telescope.nvim",

    config = function ()
	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
	-- Telescope buffers sort_mru=true ignore_current_buffer=true
	--vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
	vim.keymap.set("n", "<leader>pb", function()
		builtin.buffers({ sorted_mru=true, ignore_current_buffer = true});
	end)
	vim.keymap.set("n", "<C-p>", builtin.git_files, {});

	vim.keymap.set("n", "<leader>ss", builtin.lsp_dynamic_workspace_symbols, {})

	vim.keymap.set("n", "<leader>ps", function()
		builtin.grep_string({ search = vim.fn.input("Grep >") });
    	end)
    end
}

