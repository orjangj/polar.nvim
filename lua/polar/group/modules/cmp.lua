-- https://github.com/hrsh7th/nvim-cmp

local M = {}

function M.get(spec, config, opts)
  local color = spec.color
  -- stylua: ignore
  return {
    CmpItemKind              = { fg = color.magenta }, -- TODO
    CmpDocumentation         = { fg = color.text.normal, bg = color.background.normal },
    CmpDocumentationBorder   = { fg = color.background.accent, bg = color.background.normal },
    CmpItemAbbr              = { fg = color.text.normal },
    CmpItemAbbrDeprecated    = { fg = color.background.normal, style = "strikethrough" },
    CmpItemAbbrMatch         = { fg = color.foreground.normal },
    CmpItemAbbrMatchFuzzy    = { fg = color.foreground.normal },
    CmpItemMenu              = { fg = color.foreground.normal },

    CmpItemKindDefault       = { fg = color.text.normal },
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
    CmpItemKindSnippet       = { fg = color.text.normal },
  }
end

return M
