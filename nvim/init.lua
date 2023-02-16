require("jacob.plugins-setup")
require("jacob.core.options")
require("jacob.core.keymaps")
require("jacob.core.colorscheme")
require("jacob.plugins.comment")
require("jacob.plugins.nvim-tree")
require("jacob.plugins.lualine")
require("jacob.plugins.telescope")
require("jacob.plugins.nvim-cmp")
require("jacob.plugins.lsp.mason")
require("jacob.plugins.lsp.lspsaga")
require("jacob.plugins.lsp.lspconfig")
require("jacob.plugins.lsp.null-ls")
require("jacob.plugins.autopairs")
require("jacob.plugins.treesitter")
require("jacob.plugins.fidget")
require("jacob.plugins.jabs")
require("rust-tools").setup()
require("jacob.plugins.project")
vim.cmd(':silent exec "!setxkbmap -option caps:escape"')
