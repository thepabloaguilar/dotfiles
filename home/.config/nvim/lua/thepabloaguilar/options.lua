local utils = require('thepabloaguilar.utils')

local shell = os.getenv('SHELL') or '/bin/sh'

-- Base {{{
local base_options = {
  autoindent = true,                    -- take indent for new line from previous line
  smartindent = true,                   -- enable smart indentation
  autoread = true,                      -- reload file if the file changes on the disk
  cursorline = true,                    -- highlight the current line for the cursor
  backspace = 'indent,eol,start',       -- fix backspace indent
  ttyfast = true,                       -- improves performance of redrawing by signalizing a fast terminal connection
  hidden = true,                        -- enable hidden buffers
  fileformats = 'unix,dos,mac',
  wildmenu = true,                      -- show a menu for tab completion
  clipboard = 'unnamed,unnamedplus',
}
-- }}}

-- Encoding {{{
local encoding_options = {
  encoding = 'utf-8',
  fileencoding = 'utf-8',
  fileencodings = 'utf-8',
}
-- }}}

-- Tab {{{
local tab_options = {
  expandtab = true,    -- tabs are spaces
  shiftwidth = 2,      -- number of spaces by indent
  tabstop = 2,         -- number of visual spaces per TAB
  softtabstop = 2,     -- number of spaces in tab when editing
}
-- }}}

-- Searching {{{
local search_options = {
  hlsearch = true,
  incsearch = true,
  ignorecase = true,
  smartcase = true,
}

-- Misc Settings {{{
local misc_options = {
  list = true,                          -- show trailing whitespace
--  listchars = 'tab:\\·\\,extends:›,precedes:‹,nbsp:˙,trail:▫',
  number = true,                        -- show number ruler
  title = true,                         -- let vim set the terminal title
  shell = shell,
  mouse = 'a',
}
-- }}}

utils.set_opts(base_options)
utils.set_opts(encoding_options)
utils.set_opts(tab_options)
utils.set_opts(search_options)
utils.set_opts(misc_options)

