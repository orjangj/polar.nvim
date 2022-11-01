
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
    DiagnosticVirtualTextError = { fg = palette.red, bg = "NONE" },
    DiagnosticVirtualTextWarn  = { fg = palette.yellow, bg = "NONE" },
    DiagnosticVirtualTextInfo  = { fg = palette.orange, bg = "NONE" },
    DiagnosticVirtualTextHint  = { fg = palette.magenta, bg = "NONE" },
    DiagnosticUnderlineError   = { style = "undercurl", sp = palette.red },
    DiagnosticUnderlineWarn    = { style = "undercurl", sp = palette.yellow },
    DiagnosticUnderlineInfo    = { style = "undercurl", sp = palette.orange },
    DiagnosticUnderlineHint    = { style = "undercurl", sp = palette.magenta },
  }
end

return M
