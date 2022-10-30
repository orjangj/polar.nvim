
local M = {}

function M.get(spec, config, opts)
  local palette = spec.palette
  -- stylua: ignore
  return {
    DiagnosticError            = { fg = palette.red },
    DiagnosticWarn             = { fg = palette.yellow },
    DiagnosticInfo             = { fg = palette.orange },
    DiagnosticHint             = { fg = palette.magenta },
    DiagnosticSignError        = { link = "DiagnosticError" },
    DiagnosticSignWarn         = { link = "DiagnosticWarn" },
    DiagnosticSignInfo         = { link = "DiagnosticInfo" },
    DiagnosticSignHint         = { link = "DiagnosticHint" },
    DiagnosticVirtualTextError = { fg = palette.red },
    DiagnosticVirtualTextWarn  = { fg = palette.yellow },
    DiagnosticVirtualTextInfo  = { fg = palette.orange },
    DiagnosticVirtualTextHint  = { fg = palette.magenta },
    DiagnosticUnderlineError   = { style = "undercurl", sp = palette.red },
    DiagnosticUnderlineWarn    = { style = "undercurl", sp = palette.yellow },
    DiagnosticUnderlineInfo    = { style = "undercurl", sp = palette.orange },
    DiagnosticUnderlineHint    = { style = "undercurl", sp = palette.magenta },
  }
end

return M
