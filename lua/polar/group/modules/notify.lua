local M = {}

function M.get(spec, config, opts)
  local color = spec.color

  -- stylua: ignore
  return {
    NotifyERRORBorder = { fg = color.border.critical },
    NotifyERRORIcon   = { fg = color.text.critical },
    NotifyERRORTitle  = { fg = color.text.normal },
    NotifyWARNBorder  = { fg = color.border.urgent },
    NotifyWARNIcon    = { fg = color.text.urgent },
    NotifyWARNTitle   = { fg = color.text.normal },
    NotifyINFOBorder  = { fg = color.border.focus },
    NotifyINFOIcon    = { fg = color.text.focus },
    NotifyINFOTitle   = { fg = color.text.normal },
    NotifyDEBUGBorder = { fg = color.border.normal },
    NotifyDEBUGIcon   = { fg = color.text.normal },
    NotifyDEBUGTitle  = { fg = color.text.normal },
    NotifyTRACEBorder = { fg = color.border.normal },
    NotifyTRACEIcon   = { fg = color.text.normal },
    NotifyTRACETitle  = { fg = color.text.normal },
  }
end

return M
