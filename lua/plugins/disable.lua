return {
  { "folke/flash.nvim", enabled = false },
  { "nvim-mini/mini.surround", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      incremental_selection = {
        enable = false,
      },
    },
  },
}
