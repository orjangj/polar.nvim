local collect = require("polar.lib.collect")

local M = {}

local defaults = {
  styles = {
    comments = "NONE",
    conditionals = "NONE",
    constants = "NONE",
    functions = "NONE",
    keywords = "NONE",
    numbers = "NONE",
    operators = "NONE",
    strings = "NONE",
    types = "NONE",
    variables = "NONE"
  },
  modules = {
    cmp = true,
    diagnostic = true,
    gitsigns = true,
    neotest = true,
    notify = true,
    nvimtree = true,
    telescope = true,
    treesitter = true,
    whichkey = true
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
