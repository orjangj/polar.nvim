-- https://github.com/hrsh7th/nvim-cmp

local M = {}

function M.get(spec, config, opts)
  local palette = spec.palette
  local ui = spec.ui
  -- stylua: ignore
  return {
		CmpItemKind = { fg = palette.magenta },
    CmpDocumentation         = { fg = ui.text.primary, bg = ui.background.primary },
    CmpDocumentationBorder   = { fg = ui.background.accent, bg = ui.background.primary },
    CmpItemAbbr              = { fg = ui.text.primary, },
    CmpItemAbbrDeprecated    = { fg = ui.background.elevated, style = "strikethrough" },
    CmpItemAbbrMatch         = { fg = ui.element.primary },
    CmpItemAbbrMatchFuzzy    = { fg = ui.element.primary },
    CmpItemKindDefault       = { fg = ui.text.primary },
    CmpItemMenu              = { link = "Comment" },
    CmpItemKindKeyword       = { link = "Identifier" },
    CmpItemKindVariable      = { link = "TSVariable" },
    CmpItemKindConstant      = { link = "TSConstant" },
    CmpItemKindReference     = { link = "Keyword" },
    CmpItemKindValue         = { link = "Keyword" },
    CmpItemKindFunction      = { link = "Function" },
    CmpItemKindMethod        = { link = "Function" },
    CmpItemKindConstructor   = { link = "Function" },
    CmpItemKindInterface     = { link = "Constant" },
    CmpItemKindEvent         = { link = "Constant" },
    CmpItemKindEnum          = { link = "Constant" },
    CmpItemKindUnit          = { link = "Constant" },
    CmpItemKindClass         = { link = "Type" },
    CmpItemKindStruct        = { link = "Type" },
    CmpItemKindModule        = { link = "TSNamespace" },
    CmpItemKindProperty      = { link = "TSProperty" },
    CmpItemKindField         = { link = "TSField" },
    CmpItemKindTypeParameter = { link = "TSField" },
    CmpItemKindEnumMember    = { link = "TSField" },
    CmpItemKindOperator      = { link = "Operator" },
    CmpItemKindSnippet       = { fg = ui.text.primary },
  }
end

return M
