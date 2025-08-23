return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED
    --
    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add file to harpoon" })
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon menu" })

    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Harpoon 1st file" })
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Harpoon 2nd file" })
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Harpoon 3rd file" })
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Harpoon 4th file" })

    vim.keymap.set("n", "<leader><leader>1", function() harpoon:list():replace_at(1) end)
    vim.keymap.set("n", "<leader><leader>2", function() harpoon:list():replace_at(2) end)
    vim.keymap.set("n", "<leader><leader>3", function() harpoon:list():replace_at(3) end)
    vim.keymap.set("n", "<leader><leader>4", function() harpoon:list():replace_at(4) end)
  end,
}
