-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional optio:require(:)ns here
--
vim.filetype.add({ extension = { v = "verilog" } })

vim.opt.exrc = true -- allow local .nvim.lua .vimrc .exrc files
vim.opt.secure = true -- disable shell and write commands in local .nvim.lua .vimrc .exrc files

vim.api.nvim_set_hl(0, "GitConflictCurrent", { bg = "#383a59", fg = "#bd93f9" }) -- purple
vim.api.nvim_set_hl(0, "GitConflictIncoming", { bg = "#383a59", fg = "#50fa7b" }) -- green
vim.api.nvim_set_hl(0, "GitConflictAncestor", { bg = "#383a59", fg = "#ff79c6" }) -- pink
vim.api.nvim_set_hl(0, "GitConflictCurrentLabel", { bg = "#44475a", fg = "#bd93f9" }) -- purple
vim.api.nvim_set_hl(0, "GitConflictIncomingLabel", { bg = "#44475a", fg = "#50fa7b" }) -- green
vim.api.nvim_set_hl(0, "GitConflictAncestorLabel", { bg = "#44475a", fg = "#ff79c6" }) -- pink
vim.api.nvim_set_hl(0, "GitConflictText", { fg = "#f8f8f2", bg = "#6272a4" }) -- neutral text
