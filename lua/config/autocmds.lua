-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp_attach_auto_diag", { clear = true }),
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    local augroup_id = vim.api.nvim_create_augroup("FormatModificationsDocumentFormattingGroup", { clear = false })
    vim.api.nvim_clear_autocmds({ group = augroup_id, buffer = bufnr })

    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      group = augroup_id,
      buffer = bufnr,
      callback = function()
        local lsp_format_modifications = require("lsp-format-modifications")
        lsp_format_modifications.format_modifications(client, bufnr)
      end,
    })
  end,
})
