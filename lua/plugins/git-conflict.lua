return {
  "akinsho/git-conflict.nvim",
  version = "*",
  config = true,
  keys = { -- load the plugin only when using it's keybinding:
    {
      "<leader>gm",
      "<cmd>GitConflictRefresh<cr><cmd>GitConflictListQf<cr>",
      desc = "List merge conflicts",
    },
  },
}
