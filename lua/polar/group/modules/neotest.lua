
-- https://github.com/nvim-neotest/neotest

local M = {}

function M.get(spec, config, opts)
  local palette = spec.palette
  local ui = spec.ui
  -- stylua: ignore
  return {
    NeotestPassed       = { fg = palette.green },
    NeotestFailed       = { fg = palette.red },
    NeotestRunning      = { fg = palette.orange },
    NeotestSkipped      = { fg = palette.yellow },
    NeotestTest         = { fg = ui.text.primary },
    NeotestNamespace    = { fg = ui.element.elevated },
    NeotestMarked       = { fg = ui.text.accent, style = 'bold' },
    NeotestFocused      = { fg = ui.text.primary, style = 'underline' },
    NeotestFile         = { fg = ui.element.accent },
    NeotestDir          = { fg = ui.element.secondary},
    NeotestIndent       = { link = 'Conceal'},
    NeotestExpandMarker = { link = 'Conceal'},
    NeotestAdapterName  = { fg = ui.element.primary, style = 'bold'},
  }
end

return M
