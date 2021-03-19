local utils = require('thepabloaguilar.utils')

local startify_variables = {
  { scope = 'g', variable = 'startify_session_autoload', value = true },
  { scope = 'g', variable = 'startify_session_number', value = 10 },
  { scope = 'g', variable = 'startify_session_persistence', value = true },
  { scope = 'g', variable = 'startify_session_sort', value = true },
  { scope = 'g', variable = 'startify_change_to_vcs_root', value = true },
}

utils.set_variables(startify_variables)

