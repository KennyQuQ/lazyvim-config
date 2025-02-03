-- This file contains custom key mappings for Neovim.

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Position cursor at the middle of the screen after scrolling half page
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Scroll down half a page and center the cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Scroll up half a page and center the cursor

-- Map Ctrl+b in insert mode to delete to the end of the word without leaving insert mode
vim.keymap.set("i", "<C-b>", "<C-o>de")

-- Map Ctrl+c to escape from other modes
vim.keymap.set({ "i", "n", "v" }, "<C-c>", [[<C-\><C-n>]])

----- Tmux Navigation ------
local nvim_tmux_nav = require("nvim-tmux-navigation")

vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft) -- Navigate to the left pane
vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown) -- Navigate to the bottom pane
vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp) -- Navigate to the top pane
vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight) -- Navigate to the right pane
vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive) -- Navigate to the last active pane
vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext) -- Navigate to the next pane

----- OBSIDIAN -----
vim.keymap.set(
  "n",
  "<leader>oc",
  "<cmd>lua require('obsidian').util.toggle_checkbox()<CR>",
  { desc = "Obsidian Check Checkbox" }
)
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianTemplate<CR>", { desc = "Insert Obsidian Template" })
vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Open in Obsidian App" })
vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { desc = "Show ObsidianBacklinks" })
vim.keymap.set("n", "<leader>ol", "<cmd>ObsidianLinks<CR>", { desc = "Show ObsidianLinks" })
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Create New Note" })
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>", { desc = "Search Obsidian" })
vim.keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Quick Switch" })

----- OIL -----
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- Delete all buffers but the current one
vim.keymap.set(
  "n",
  "<leader>bq",
  '<Esc>:%bdelete|edit #|normal`"<Return>',
  { desc = "Delete other buffers but the current one" }
)

-- Disable key mappings in insert mode
vim.api.nvim_set_keymap("i", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-k>", "<Nop>", { noremap = true, silent = true })

-- Disable key mappings in normal mode
vim.api.nvim_set_keymap("n", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<Nop>", { noremap = true, silent = true })

-- Disable key mappings in visual block mode
vim.api.nvim_set_keymap("x", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<A-k>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "J", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "K", "<Nop>", { noremap = true, silent = true })

-- Redefine Ctrl+s to save with the custom function
vim.api.nvim_set_keymap("n", "<D-s>", ":lua SaveFile()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>sf", ":lua SaveFile()<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>1j", "10j", { noremap = true, silent = true, desc = "Move down 10 lines" })
vim.keymap.set("n", "<leader>1k", "10k", { noremap = true, silent = true, desc = "Move up 10 lines" })
vim.keymap.set("n", "<leader>2j", "30j", { noremap = true, silent = true, desc = "Move down 30 lines" })
vim.keymap.set("n", "<leader>2k", "30k", { noremap = true, silent = true, desc = "Move up 30 lines" })
vim.keymap.set("n", "<leader>3j", "100j", { noremap = true, silent = true, desc = "Move down 100 lines" })
vim.keymap.set("n", "<leader>3k", "100k", { noremap = true, silent = true, desc = "Move up 100 lines" })
vim.keymap.set("n", "q", "B", { noremap = true, silent = true, desc = "" })
vim.keymap.set("n", "e", "E", { noremap = true, silent = true, desc = "" })
vim.keymap.set("n", "<leader>aj", "VG", { noremap = true, silent = true, desc = "Select All Below" })
vim.keymap.set("n", "<leader>ak", "Vgg", { noremap = true, silent = true, desc = "Select All Above" })
vim.keymap.set("n", "U", "<C-R>", { noremap = true, silent = true, desc = "Redo" })
vim.keymap.set("n", "<leader>r", "<cmd>Neotree focus<CR>", { noremap = true, silent = true, desc = "NeoTree focus" })
vim.keymap.set("n", "dd", '"_dd', { noremap = true, silent = true, desc = "delete line without saving to register" })
vim.keymap.set("n", "dx", "dd", { noremap = true, silent = true, desc = "delete line and saving to register" })
vim.keymap.set(
  "n",
  "<leader>md",
  "<cmd>MarkdownPreview<CR>",
  { noremap = true, silent = true, desc = "MarkdownPreview" }
)
vim.keymap.set(
  "n",
  "<leader>ud",
  "<cmd>Lazy update<CR>",
  { noremap = true, silent = true, desc = "Lazy Plugins Update" }
)

vim.keymap.set("x", "<leader>1j", "10j", { noremap = true, silent = true, desc = "Move down 10 lines" })
vim.keymap.set("x", "<leader>1k", "10k", { noremap = true, silent = true, desc = "Move up 10 lines" })
vim.keymap.set("x", "<leader>2j", "30j", { noremap = true, silent = true, desc = "Move down 30 lines" })
vim.keymap.set("x", "<leader>2k", "30k", { noremap = true, silent = true, desc = "Move up 30 lines" })
vim.keymap.set("x", "<leader>3j", "100j", { noremap = true, silent = true, desc = "Move down 100 lines" })
vim.keymap.set("x", "<leader>3k", "100k", { noremap = true, silent = true, desc = "Move up 100 lines" })
vim.keymap.set("x", "q", "B", { noremap = true, silent = true, desc = "" })
vim.keymap.set("x", "e", "E", { noremap = true, silent = true, desc = "" })
vim.keymap.set("x", "<leader>aj", "VG", { noremap = true, silent = true, desc = "Select All Below" })
vim.keymap.set("x", "<leader>ak", "Vgg", { noremap = true, silent = true, desc = "Select All Above" })
vim.keymap.set("x", "U", "<C-R>", { noremap = true, silent = true, desc = "Redo" })
vim.keymap.set("x", "<leader>r", "<cmd>Neotree focus<CR>", { noremap = true, silent = true, desc = "NeoTree focus" })
vim.keymap.set("x", "dd", '"_dd', { noremap = true, silent = true, desc = "delete line without saving to register" })
vim.keymap.set("x", "dx", "dd", { noremap = true, silent = true, desc = "delete line and saving to register" })
vim.keymap.set(
  "x",
  "<leader>md",
  "<cmd>MarkdownPreview<CR>",
  { noremap = true, silent = true, desc = "MarkdownPreview" }
)
vim.keymap.set(
  "x",
  "<leader>ud",
  "<cmd>Lazy update<CR>",
  { noremap = true, silent = true, desc = "Lazy Plugins Update" }
)

vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true, desc = "Exit Insert mode" })

vim.keymap.set("v", "dd", '"_dd', { noremap = true, silent = true, desc = "delete line without saving to register" })
vim.keymap.set("v", "dx", "dd", { noremap = true, silent = true, desc = "delete line and saving to register" })

vim.keymap.set("n", "m", ":normal gcc<CR>", { desc = "Toggle comment line" })
vim.keymap.set("v", "m", "<Esc>:normal gvgc<CR>", { desc = "Toggle comment block" })

vim.keymap.set("n", "<D-a>", "ggVG", { desc = "Toggle comment line" })

vim.keymap.set("n", "<D-n>", "<C-n>", { desc = "vm-find_word" })
vim.keymap.set("n", "<D-Down>", "<C-Down>", { desc = "vm-add-cursor-down" })
vim.keymap.set("n", "<D-Up>", "<C-Up>", { desc = "vm-add-cursor-up" })
vim.keymap.set("n", "<D-Right>", "<S-Right>", { desc = "vm-shift-select-right" })
vim.keymap.set("n", "<D-Left>", "<S-Left>", { desc = "vm-shift-select-left" })

vim.keymap.set("v", "<D-n>", "<C-n>", { desc = "vm-find_word" })
vim.keymap.set("v", "<D-Down>", "<C-Down>", { desc = "vm-add-cursor-down" })
vim.keymap.set("v", "<D-Up>", "<C-Up>", { desc = "vm-add-cursor-up" })
vim.keymap.set("v", "<D-Right>", "<S-Right>", { desc = "vm-shift-select-right" })
vim.keymap.set("v", "<D-Left>", "<S-Left>", { desc = "vm-shift-select-left" })

vim.keymap.set("t", "jk", "exit<CR><cmd>q<CR>", { desc = "Exit Terminal" })

vim.keymap.set(
  "n",
  "<leader>mm",
  "<cmd>TodoQuickFix<CR>",
  { noremap = true, silent = true, desc = "Show TODOs in QuickFix" }
)
vim.keymap.set(
  "n",
  "<leader>mt",
  "iTODO:<Esc>:normal gcc<CR>A ",
  { noremap = true, silent = true, desc = "Add TODOs comments" }
)
vim.keymap.set(
  "n",
  "<leader>mn",
  "iNOTE:<Esc>:normal gcc<CR>A ",
  { noremap = true, silent = true, desc = "Add NOTEs comments" }
)
vim.keymap.set(
  "n",
  "<leader>mb",
  "iBUG:<Esc>:normal gcc<CR>A ",
  { noremap = true, silent = true, desc = "Add BUGs comments" }
)
vim.keymap.set(
  "n",
  "<leader>mp",
  "iPERF:<Esc>:normal gcc<CR>A ",
  { noremap = true, silent = true, desc = "Add PERFs comments" }
)
vim.keymap.set(
  "n",
  "<leader>mw",
  "iWARNING:<Esc>:normal gcc<CR>A ",
  { noremap = true, silent = true, desc = "Add WARNINGs comments" }
)
vim.keymap.set(
  "n",
  "<leader>mh",
  "iHACK:<Esc>:normal gcc<CR>A ",
  { noremap = true, silent = true, desc = "Add HACKs comments" }
)
vim.keymap.set(
  "n",
  "<leader>mf",
  "iFIX:<Esc>:normal gcc<CR>A ",
  { noremap = true, silent = true, desc = "Add FIXs comments" }
)
vim.keymap.set("n", "<leader>m.", function()
  require("todo-comments").jump_next()
end, { noremap = true, silent = true, desc = "Next TODO" })
vim.keymap.set("n", "<leader>m,", function()
  require("todo-comments").jump_prev()
end, { noremap = true, silent = true, desc = "Previous TODO" })

-- Custom save function
function SaveFile()
  -- Check if a buffer with a file is open
  if vim.fn.empty(vim.fn.expand("%:t")) == 1 then
    vim.notify("No file to save", vim.log.levels.WARN)
    return
  end

  local filename = vim.fn.expand("%:t") -- Get only the filename
  local success, err = pcall(function()
    vim.cmd("silent! write") -- Try to save the file without showing the default message
  end)

  if success then
    vim.notify(filename .. " Saved!") -- Show only the custom message if successful
  else
    vim.notify("Error: " .. err, vim.log.levels.ERROR) -- Show the error message if it fails
  end
end
