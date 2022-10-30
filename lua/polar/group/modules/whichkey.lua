-- https://github.com/folke/which-key.nvim

local M = {}

function M.get(spec, config, opts)
  local palette = spec.palette
  local ui = spec.ui
  -- stylua: ignore
  return {
		WhichKey = { fg = ui.text.primary, style = "bold" },
		WhichKeyDesc = { fg = ui.element.primary },
		WhichKeyGroup = { fg = ui.element.secondary },
		WhichKeySeperator = { fg = ui.element.secondary },
		WhichKeyFloating = { bg = ui.background.secondary },
		WhichKeyFloat = { bg = ui.background.secondary },
    WhichKeySeparator = { fg = palette.comment },
    WhichKeyValue     = { fg = palette.comment },
  }
end

return M
