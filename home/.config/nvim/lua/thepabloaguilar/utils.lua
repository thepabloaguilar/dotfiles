local utils = { }

local variable_scopes = {g = vim.g, b = vim.b, w = vim.w, t = vim.t}

-- TODO: Remove when https://github.com/neovim/neovim/pull/13479
local opts_info = vim.api.nvim_get_all_options_info()
local opt = setmetatable({}, {
  __index = vim.o,
  __newindex = function(_, key, value)
    vim.o[key] = value
    local scope = opts_info[key].scope
    if scope == "win" then
      vim.wo[key] = value
    elseif scope == "buf" then
      vim.bo[key] = value
    end
  end,
})

function utils.set_opts(opts_table)
  for key, value in pairs(opts_table) do
    opt[key] = value
  end
end

function utils.variable(scope, key, value)
  variable_scopes[scope][key] = value
end

function utils.set_variables(variables_table)
  for _, var in ipairs(variables_table) do
    scope, variable, value = var['scope'], var['variable'], var['value']
    variable_scopes[scope][variable] = value
  end
end

function utils.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return utils

