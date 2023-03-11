local M = {}

function M.init(opts)
  require("polar.config").set_options(opts)
end

function M.load()
  local spec = require("polar.spec")
  local groups = require("polar.group").load(spec)

  -- Initialize the environment
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  -- vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "polar"

  require("polar.lib.highlight").highlight(groups)

  -- Set terminal colors
  for i, value in ipairs(spec.color.terminal) do
    local n = "terminal_color_" .. i - 1
    vim.g[n] = value
  end
end

function M.setup(opts)
  if opts.options then
    M.init(opts.options)
  end
end

return M
