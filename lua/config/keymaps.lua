-- for some ease of life
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<A-l>", ">>")
keymap.set("n", "<A-h>", "<<")

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- better navigation
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- best remaps ever
keymap.set("n", "<leader>y", '"+y')
keymap.set("n", "<leader>Y", '"+Y')
keymap.set("n", "y", '"*y')

-- visual mode
keymap.set("n", "<leader>v", "<C-v>")

-- redo
keymap.set("n", "U", "<cmd>redo<CR>")

-- terminal
keymap.set("n", "<A-i>", function()
  require("nvterm.terminal").toggle("float")
end)

-- obsidian stuff
keymap.set("n", "<leader>od", "<cmd>ObsidianFollowLink<CR>")
keymap.set("n", "<leader>ot", "<cmd>ObsidianToday<CR>")
keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>")
keymap.set("n", "<leader>oy", "<cmd>ObsidianYesterday<CR>")
keymap.set("n", "<leader>oi", "<cmd>ObsidianTemplate<CR>")
keymap.set("n", "<leader>of", "<cmd>ObsidianSearch<CR>")

-- visual mode
keymap.set("v", "<A-l>", ">gv")
keymap.set("v", "<A-h>", "<gv")
keymap.set("v", "<leader>p", '"_dP')
keymap.set("v", "<leader>y", '"+y')

-- pop up terminal
keymap.set("t", "<A-i>", function()
  require("nvterm.terminal").toggle("float")
end)
