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

vim.pack.add({ "https://github.com/mawkler/modicator.nvim" })
require("modicator").setup()

vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/pmizio/typescript-tools.nvim",

  -- Optional, but commonly used if you configure other LSPs with lspconfig.
  "https://github.com/neovim/nvim-lspconfig",
})

require("typescript-tools").setup({})

vim.pack.add({
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/nvim-mini/mini.nvim",
})
require("oil").setup({
  default_file_explorer = true,
  columns = {
	  "icon",
  },
  view_options = {
	  show_hidden = true,
  },
})

vim.pack.add({ "https://github.com/lewis6991/gitsigns.nvim" })

vim.pack.add({ { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } })
require("catppuccin").setup({
	transparent_background = true
})

vim.cmd.colorscheme("catppuccin")


vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  {
    src = "https://github.com/nvim-telescope/telescope.nvim",
    version = "master",
  },
})

require("telescope").setup({})

vim.pack.add({
    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/nvim-mini/mini.nvim',            -- if you use the mini.nvim suite
    'https://github.com/MeanderingProgrammer/render-markdown.nvim',
})
require('render-markdown').setup({}) -- only mandatory if you want to set custom options

dofile(config_path .. "/keymaps.lua")
