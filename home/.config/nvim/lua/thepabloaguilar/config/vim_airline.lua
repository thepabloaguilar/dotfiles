local utils = require('thepabloaguilar.utils')

local vim_airline_variables = {
  { scope = 'g', variable = 'airline_theme', value =  'deus' },
  { scope = 'g', variable = 'airline_powerline_fonts', value =  1 },
  { scope = 'g', variable = 'airline_skip_empty_sections', value = 1 },
  { scope = 'g', variable = 'airline#extensions#branch#enabled', value = 1 },
  { scope = 'g', variable = 'airline#extensions#ale#enabled', value = 1 },
  { scope = 'g', variable = 'airline#extensions#ale#enabled', value = 1 },
  { scope = 'g', variable = 'airline#extensions#tabline#enabled', value = 1 },
  { scope = 'g', variable = 'airline#extensions#tagbar#enabled', value = 1 },
  { scope = 'g', variable = 'airline#extensions#virtualenv#enabled', value = 1 },
}

utils.set_variables(vim_airline_variables)

