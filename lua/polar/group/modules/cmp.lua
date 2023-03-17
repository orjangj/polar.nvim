-- https://github.com/hrsh7th/nvim-cmp

local M = {}

function M.get(spec, config, opts)
  local color = spec.color
  -- stylua: ignore
  return {
    CmpItemAbbr              = { fg = color.text.normal },
    CmpItemAbbrDeprecated    = { fg = color.background.accent, style = "strikethrough" },
    CmpItemAbbrMatch         = { fg = color.text.focus },
    CmpItemAbbrMatchFuzzy    = { fg = color.text.focus },
    CmpItemKind              = { fg = color.magenta }, -- TODO
    CmpItemKindDefault       = { fg = color.text.normal },
    CmpItemKindKeyword       = { link = "Keyword" },
    CmpItemKindVariable      = { link = "Identifier" },
    CmpItemKindConstant      = { link = "Constant" },
    CmpItemKindReference     = { link = "Special" },
    CmpItemKindValue         = { link = "Number" },
    CmpItemKindFunction      = { link = "Function" },
    CmpItemKindMethod        = { link = "Function" },
    CmpItemKindConstructor   = { link = "Special" },
    CmpItemKindInterface     = { link = "Constant" },
    CmpItemKindEvent         = { link = "Constant" },
    CmpItemKindEnum          = { link = "Constant" },
    CmpItemKindUnit          = { link = "Constant" },
    CmpItemKindClass         = { link = "Type" },
    CmpItemKindStruct        = { link = "Type" },
    CmpItemKindModule        = { link = "Identifier" },
    CmpItemKindProperty      = { link = "Identifier" },
    CmpItemKindField         = { link = "Identifier" },
    CmpItemKindTypeParameter = { link = "Identifier" },
    CmpItemKindEnumMember    = { link = "Identifier" },
    CmpItemKindOperator      = { link = "Operator" },
    CmpItemKindSnippet       = { fg = color.text.normal },
    CmpItemMenu              = { fg = color.text.focus },
  }
end

return M
