local utils = require('thepabloaguilar.utils')


local indent_line_variables = {
  { scope = 'g', variable = 'indentLine_char', value = '┆' },
  { scope = 'g', variable = 'indentLine_first_char', value = '┆' },
  { scope = 'g', variable = 'indentLine_showFirstIndentLevel', value = true },
  { scope = 'g', variable = 'indentLine_setColors', value = false },
}

utils.set_variables(indent_line_variables)

