
vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = " "

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.pack.add({
  "https://github.com/nvim-tree/nvim-tree.lua",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

require("nvim-tree").setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
})

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {
  desc = "Toggle file tree",
})

vim.keymap.set({ "n", "x" }, "<C-c>", '"+y', { desc = "Copy to clipboard" })
vim.keymap.set({ "n", "x" }, "<C-v>", '"+p', { desc = "Paste from clipboard" })
vim.keymap.set("i", "<C-v>", "<C-r>+", { desc = "Paste from clipboard" })

vim.pack.add({ 'https://github.com/nvim-mini/mini.nvim' })

vim.pack.add({ 'https://github.com/lewis6991/gitsigns.nvim' })

vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } }

vim.g.neovide_opacity = 0.30
vim.g.neovide_normal_opacity = 0.30
vim.g.neovide_window_blurred = true
vim.g.neovide_floating_blur_amount_x = 16.0
vim.g.neovide_floating_blur_amount_y = 16.0

vim.keymap.set("n", "<leader>ev", function()
	vim.cmd.edit(vim.fn.stdpath("config") .. "/init.lua")
end)

vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  {
    src = "https://github.com/nvim-telescope/telescope.nvim",
    version = "master",
  },
})

require("telescope").setup({})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep,  { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers,    { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags,  { desc = "Telescope help tags" })
