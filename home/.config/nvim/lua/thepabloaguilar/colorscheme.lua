local utils = require('thepabloaguilar.utils')
local cmd = vim.cmd

utils.set_opts({ termguicolors =  true })
utils.variable('g', 'ayucolor', 'mirage')

cmd 'colorscheme ayu'

