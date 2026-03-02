return {
  { "tpope/vim-repeat" },
  { "tpope/vim-surround" },
  { "sindrets/diffview.nvim" },
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },
  { "f-person/git-blame.nvim", event = "VeryLazy" },
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>n",
        "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
        desc = "Redraw / Clear hlsearch / Diff update",
      },
    },
  },

  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = {
              layout = {
                position = "right",
              },
            },
          },
        },
      },
    },
  },

  {
    "saghen/blink.cmp",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        preset = "none",
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },

        ["<Tab>"] = { "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "snippet_backward", "fallback" },

        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-1"] = { "show", "show_documentation", "hide_documentation" },

        ["<C-e>"] = { "show", "show_documentation", "hide_documentation" },

        -- ["<C-e>"] = { "hide" },
        ["<C-y>"] = { "select_and_accept" },
        ["<CR>"] = { "select_and_accept", "fallback" },

        ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
        ["<C-n>"] = { "select_next", "fallback_to_mappings" },

        ["<C-b>"] = { "scroll_documentation_up", "fallback" },
        ["<C-f>"] = { "scroll_documentation_down", "fallback" },

        ["<C-k>"] = { "select_prev", "fallback_to_mappings" },
        ["<C-j>"] = { "select_next", "fallback_to_mappings" },
      },
    },
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "biome-check", stop_after_first = true },
        typescript = { "biome-check", stop_after_first = true },
        typescriptreact = { "biome-check", stop_after_first = true },
        javascriptreact = { "biome-check", stop_after_first = true },
        css = { "biome-check", stop_after_first = true },
        scss = { "biome-check", stop_after_first = true },
      },
    },
  },
}
