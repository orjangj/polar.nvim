
local M = {}

function M.get(spec, config, opts)
  local color = spec.color

  -- stylua: ignore
  return {
    DiagnosticError            = { fg = color.diagnostic.error },
    DiagnosticWarn             = { fg = color.diagnostic.warning },
    DiagnosticInfo             = { fg = color.diagnostic.info },
    DiagnosticHint             = { fg = color.diagnostic.hint },
    DiagnosticSignError        = { link = "DiagnosticError" },
    DiagnosticSignWarn         = { link = "DiagnosticWarn" },
    DiagnosticSignInfo         = { link = "DiagnosticInfo" },
    DiagnosticSignHint         = { link = "DiagnosticHint" },
    DiagnosticVirtualTextError = { fg = color.diagnostic.error, bg = color.none },
    DiagnosticVirtualTextWarn  = { fg = color.diagnostic.warning, bg = color.none },
    DiagnosticVirtualTextInfo  = { fg = color.diagnostic.info, bg = color.none },
    DiagnosticVirtualTextHint  = { fg = color.diagnostic.hint, bg = color.none },
    DiagnosticUnderlineError   = { style = "undercurl", sp = color.diagnostic.error },
    DiagnosticUnderlineWarn    = { style = "undercurl", sp = color.diagnostic.warning },
    DiagnosticUnderlineInfo    = { style = "undercurl", sp = color.diagnostic.info },
    DiagnosticUnderlineHint    = { style = "undercurl", sp = color.diagnostic.hint },
  }
end

return M
