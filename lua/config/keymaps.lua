-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

map(
  "n",
  "<leader>n",
  "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
  { desc = "Redraw / Clear hlsearch / Diff update" }
)
map("n", "<leader>w", "<cmd>:w<cr>", { desc = "Save" })
map("n", "<leader>gdo", "<cmd>:DiffviewOpen<cr>", { desc = "Open Git DIffview" })
map("n", "<leader>gdd", "<cmd>DiffviewClose<cr>", { desc = "Close Git Diffview" })
