return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      verible = {
        cmd = { "verible-verilog-ls", "--rules_config_search", "--indentation_spaces=4" },
      },
      clangd = {
        mason = false,
      },
      stylua = {
        mason = false,
      },
      lua_ls = {
        mason = false,
      },
    },
  },
}
