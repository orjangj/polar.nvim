-- https://github.com/folke/which-key.nvim

local M = {}

function M.get(spec, config, opts)
  local palette = spec.palette
  local ui = spec.ui
  -- stylua: ignore
  return {
    WhichKey          = { fg = ui.text.primary, style = "bold" },
    WhichKeyGroup     = { fg = ui.element.secondary },
    WhichKeySeperator = { fg = ui.element.secondary },
    WhichKeyDesc      = { fg = ui.element.primary },
    WhichKeyFloat     = { bg = ui.background.secondary },
    WhichKeyBorder    = { link = "FloatBorder" },
    WhichKeyValue     = { link = "Comment" },
  }
end

return M
