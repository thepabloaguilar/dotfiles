local cmd = vim.cmd

cmd 'syntax enable'
cmd 'filetype plugin indent on'
cmd [[autocmd BufWritePre * %s/\s\+$//e]] -- remove trailing whitespaces

