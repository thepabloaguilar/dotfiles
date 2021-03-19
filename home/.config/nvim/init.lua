-- packer.vim
require('thepabloaguilar.packer')

-- Set the leader button
vim.g.mapleader = ','

-- Install plugins
require('thepabloaguilar.plugins')

-- Load plugins' config
require('thepabloaguilar.config')

-- Load options & settings
require('thepabloaguilar.options')
require('thepabloaguilar.settings')

-- Load colorscheme
require('thepabloaguilar.colorscheme')

-- LSP
require('thepabloaguilar.lsp')

