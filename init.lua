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


vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-lualine/lualine.nvim'
})
require("lualine").setup {
    options = { theme = "horizon" }
}

vim.pack.add({
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/folke/trouble.nvim",
})
require("trouble").setup({})

vim.pack.add({
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
})

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    -- add more here, e.g. "ts_ls", "pyright", "rust_analyzer"
  },
  automatic_enable = true,
})

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = true,
})

dofile(config_path .. "/keymaps.lua")
