require('settings')
require('gui')


require('plugins')
vim.g.loaded_matchparen        = 1
vim.g.loaded_matchit           = 1
vim.g.loaded_logiPat           = 1
vim.g.loaded_rrhelper          = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_gzip              = 1
vim.g.loaded_zipPlugin         = 1
vim.g.loaded_2html_plugin      = 1
vim.g.loaded_shada_plugin      = 1
vim.g.loaded_spellfile_plugin  = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_remote_plugins    = 1

require("impatient")

require("ibl").setup()
require("mason").setup()

require("configs.nvimtree").config()
require("configs.autocomplete").config()
require("configs.statusline").config()
require("configs.treesitter").config()
require("configs.startscreen").config()
require("configs.git").config()
require("configs.bufferline").config()
require("configs.grammar").config()
require("configs.terminal").config()
require("configs.scrollbar").config()
require("configs.telescope").config()
require("configs.leetcode").config()

require("configs.lang.rust").config()

require('theme')
require('keymaps')
