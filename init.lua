local config_path = vim.fn.stdpath("config")

dofile(config_path .. "/options.lua")

vim.pack.add({
  "https://github.com/nvim-tree/nvim-tree.lua",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

require("nvim-tree").setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
})

vim.pack.add({ "https://github.com/nvim-mini/mini.nvim" })

vim.pack.add({ "https://github.com/lewis6991/gitsigns.nvim" })

vim.pack.add({ { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } })

vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  {
    src = "https://github.com/nvim-telescope/telescope.nvim",
    version = "master",
  },
})

require("telescope").setup({})

dofile(config_path .. "/keymaps.lua")
