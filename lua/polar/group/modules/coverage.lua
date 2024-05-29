-- https://github.com/andythigpen/nvim-coverage

local M = {}

function M.get(spec, config, opts)
  local color = spec.color
  -- stylua: ignore
  return {
    CoverageCovered       = { fg = color.green },
    CoverageUncovered     = { fg = color.red },
    CoveragePartial       = { fg = color.yellow },
    CoverageSummaryHeader = { fg = color.blue },
  }
end

return M
