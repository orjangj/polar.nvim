local M = {}

function M.get(spec, config, opts)
  local color = spec.color

  -- stylua: ignore
  return {
    NotifyERRORBorder = { fg = color.border.focus },
    NotifyERRORIcon   = { fg = color.red },
    NotifyERRORTitle  = { fg = color.red },
    NotifyWARNBorder  = { fg = color.border.focus },
    NotifyWARNIcon    = { fg = color.yellow },
    NotifyWARNTitle   = { fg = color.yellow },
    NotifyINFOBorder  = { fg = color.border.accent },
    NotifyINFOIcon    = { fg = color.green },
    NotifyINFOTitle   = { fg = color.green },
    NotifyDEBUGBorder = { fg = color.border.normal },
    NotifyDEBUGIcon   = { fg = color.white },
    NotifyDEBUGTitle  = { fg = color.white },
    NotifyTRACEBorder = { fg = color.border.normal },
    NotifyTRACEIcon   = { fg = color.white },
    NotifyTRACETitle  = { fg = color.white },
  }
end

return M
