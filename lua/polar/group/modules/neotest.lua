
-- https://github.com/nvim-neotest/neotest

local M = {}

function M.get(spec, config, opts)
  local color = spec.color

  -- stylua: ignore
  return {
    NeotestPassed       = { fg = color.diagnostic.success },
    NeotestFailed       = { fg = color.diagnostic.error },
    NeotestRunning      = { fg = color.diagnostic.info },
    NeotestSkipped      = { fg = color.diagnostic.hint },
    NeotestTest         = { fg = color.text.normal },
    NeotestNamespace    = { fg = color.types },
    NeotestMarked       = { fg = color.text.normal, style = 'bold' },
    NeotestFocused      = { fg = color.text.normal, style = 'underline' },
    NeotestFile         = { fg = color.filename },
    NeotestDir          = { link = "Directory" },
    NeotestIndent       = { link = "Conceal" },
    NeotestExpandMarker = { link = "Conceal" },
    NeotestAdapterName  = { fg = color.foreground.normal, style = 'bold'},
  }
end

return M
