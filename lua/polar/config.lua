local collect = require("polar.lib.collect")

local M = {}

local defaults = {
  theme = "nord",
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = {},
    conditionals = {},
    constants = {},
    functions = {},
    keywords = {},
    numbers = {},
    operators = {},
    strings = {},
    types = {},
    variables = {},
  },
}

M.options = collect.deep_copy(defaults)

function M.set_options(opts)
  opts = opts or {}
  M.options = collect.deep_extend(M.options, opts)
  M.has_options = true
end

function M.reset()
  M.options = collect.deep_copy(defaults)
end

return M
