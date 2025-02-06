return {
  {
    "joechrisellis/lsp-format-modifications.nvim",
    init = function()
      require("lazyvim.util").lsp.on_attach(function(client, bufnr)
        vim.api.nvim_buf_create_user_command(bufnr, "FormatModifications", function()
          local lsp_format_modifications = require("lsp-format-modifications")
          lsp_format_modifications.format_modifications(client, bufnr)
        end, {})
      end)
    end,
  },
}
