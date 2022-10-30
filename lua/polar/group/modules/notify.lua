local M = {}

function M.get(spec, config, opts)
  local palette = spec.palette
  local ui = spec.ui
  -- stylua: ignore
  return {
    NotifyDEBUGBorder = { fg = ui.background.elevated },
    NotifyDEBUGIcon   = { fg = ui.background.elevated },
    NotifyDEBUGTitle  = { fg = ui.background.elevated },
    NotifyERRORBorder = { fg = palette.red },
    NotifyERRORIcon   = { fg = palette.red },
    NotifyERRORTitle  = { fg = palette.red },
    NotifyINFOBorder  = { fg = palette.green },
    NotifyINFOIcon    = { fg = palette.green },
    NotifyINFOTitle   = { fg = palette.green },
    NotifyTRACEBorder = { fg = palette.magenta },
    NotifyTRACEIcon   = { fg = palette.magenta },
    NotifyTRACETitle  = { fg = palette.magenta },
    NotifyWARNBorder  = { fg = palette.yellow },
    NotifyWARNIcon    = { fg = palette.yellow },
    NotifyWARNTitle   = { fg = palette.yellow },
  }
end

return M
