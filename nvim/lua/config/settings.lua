vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.conceallevel = 0
local TAB_WIDTH = 4
-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 2

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeOpen)
vim.keymap.set("n", "<leader>no", vim.cmd.nohlsearch)

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.opt_local.linebreak = true
    end,
})

