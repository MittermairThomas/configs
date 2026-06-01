vim.opt.number = true --Show numbers

vim.opt.wrap = false  --Do not wrap long lines

vim.opt.termguicolors = true --Enable 24-bit colors

--Tab-settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

--Make background transparent
vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

--Clipboard
vim.opt.clipboard = "unnamedplus"

--Syntax
vim.cmd("syntax on")

vim.api.nvim_create_autocmd("FileType", {
    pattern = {"c", "cpp"},
    callback = function()
        vim.cmd([[syntax match cCustomFunc /\w\+\s*(/me=e-1,he=e-1]])
        vim.cmd([[hi link cCustomFunc Function]])
        vim.cmd("colorscheme cColors");
    end
})
