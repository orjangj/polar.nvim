local collect = require("polar.lib.collect")

local M = {}

function M.load(spec)
  local config = require("polar.config").options
  local editor = require("polar.group.editor").get(spec, config)
  local syntax = require("polar.group.syntax").get(spec, config)

  local result = collect.deep_extend(editor, syntax)

  for name, opts in pairs(config.modules or {}) do
    if opts then
      result = collect.deep_extend(result, require("polar.group.modules." .. name).get(spec, config, {}))
    end
  end

  return result
end

return M
