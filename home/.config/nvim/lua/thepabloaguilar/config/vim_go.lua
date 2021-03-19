local utils = require('thepabloaguilar.utils')

local vim_go_variables = {
  -- Enable syntax highlighting by default {{{
  { scope = 'g', variable = 'go_highlight_types', value = true },
  { scope = 'g', variable = 'go_highlight_fields', value = true },
  { scope = 'g', variable = 'go_highlight_functions', value = true },
  { scope = 'g', variable = 'go_highlight_methods', value = true },
  { scope = 'g', variable = 'go_highlight_structs', value = true },
  { scope = 'g', variable = 'go_highlight_operators', value = true },
  { scope = 'g', variable = 'go_highlight_build_constraints', value = true },
  { scope = 'g', variable = 'go_highlight_extra_types', value = true },
  -- }}}

  -- Auto formatting and importing {{{
  { scope = 'g', variable = 'go_fmt_autosave', value = true },
  { scope = 'g', variable = 'go_fmt_command', value = 'goimports' },
  -- }}}

  -- Using gopls to find definitions and information {{{
  { scope = 'g', variable = 'go_def_mode', value = 'gopls' },
  { scope = 'g', variable = 'go_info_mode', value = 'gopls' },
  -- }}}

  { scope = 'g', variable = 'go_echo_command_info', value = true },   -- show the progress when running :GoCoverage
  { scope = 'g', variable = 'go_auto_type_info', value = true },      -- show type information
  { scope = 'g', variable = 'go_list_type', value = 'quickfix' },     -- Fix for location list when vim-go is use together with Syntastic
  { scope = 'g', variable = 'go_test_show_name', value = true },      -- Add the failing test name to the output of :GoTest
}

utils.set_variables(vim_go_variables)

