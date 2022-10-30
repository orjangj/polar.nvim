-- https://github.com/nvim-telescope/telescope.nvim

local M = {}

function M.get(spec, config, opts)
  local ui = spec.ui
  -- stylua: ignore
  return {
    TelescopeBorder         = { fg = ui.background.secondary },
    TelescopePromptBorder   = { fg = ui.element.primary },
    TelescopeResultsBorder  = { fg = ui.element.secondary },
    TelescopePreviewBorder  = { fg = ui.element.accent },
    TelescopeSelectionCaret = { fg = ui.element.primary },
    TelescopeSelection      = { fg = ui.element.primary },
    TelescopeMatching       = { fg = ui.element.primary },
  }
end

return M
