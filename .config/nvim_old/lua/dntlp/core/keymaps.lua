vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- Moving lines up and down when in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in the middle when searching by a term
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("n", "J", "mzJ`z") -- Join bottom line

-- Half page jump up and down
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")


-- Paste current seletion and don't copy deleted stuff to register
keymap.set("x", "<leader>p", [["_dP]])

-- Copy current selection to system clipboard or to current buffer
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- Delete to void register
keymap.set({ "n", "v" }, "<leader>d", [["_d]])

keymap.set("n", "Q", "<nop>")


keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quickfix move
keymap.set("n", "<leader>k", "<cmd>cnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>cprev<CR>zz")

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])                            -- rename
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })                                         -- make file executable

keymap.set('n', '<leader>cmp', [[<cmd>!g++ -std=c++17 -o %:p:r %<CR>]], { silent = true })                      -- compile code
keymap.set('n', '<leader>cmd', [[<cmd>!clang++ --debug -Wno-vla -std=c++17 -o %:p:r %<CR>]], { silent = true }) -- compile code

-- Load current lua file
keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

-- window management
-- keymap.set("n", "<leader>sv", "<C-w>v")               -- split window vertically
-- keymap.set("n", "<leader>sh", "<C-w>s")               -- split window horizontally
-- keymap.set("n", "<leader>se", "<C-w>=")               -- make split windows equal width & height
-- keymap.set("n", "<leader>sx", ":close<CR>")           -- close current split window
-- keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- tmux sessions
