-- https://github.com/nvim-telescope/telescope.nvim

local M = {}

function M.get(spec, config, opts)
  local color = spec.color
  -- stylua: ignore
  return {
    -- NOTE: Keys with values matching pattern { default = ..., link = ... }
    -- are the defaults set by Telescope. They're only included here for
    -- completeness and easy access if they need to be changed.
    TelescopeSelection              = { fg = color.foreground.normal },
    TelescopeSelectionCaret         = { fg = color.text.normal },
    TelescopeMultiSelection         = { default = true, link = "Type" },
    TelescopeMultiIcon              = { default = true, link = "Identifier" },
    TelescopeNormal                 = { default = true, link = "Normal" },
    TelescopePreviewNormal          = { default = true, link = "TelescopeNormal" },
    TelescopePromptNormal           = { default = true, link = "TelescopeNormal" },
    TelescopeResultsNormal          = { default = true, link = "TelescopeNormal" },
    TelescopeBorder                 = { fg = color.border.normal },
    TelescopePromptBorder           = { default = true, link = "TelescopeBorder" },
    TelescopeResultsBorder          = { default = true, link = "TelescopeBorder" },
    TelescopePreviewBorder          = { default = true, link = "TelescopeBorder" },
    TelescopeTitle                  = { fg = color.text.normal },
    TelescopePromptTitle            = { default = true, link = "TelescopeTitle" },
    TelescopeResultsTitle           = { default = true, link = "TelescopeTitle" },
    TelescopePreviewTitle           = { default = true, link = "TelescopeTitle" },
    TelescopePromptCounter          = { default = true, link = "NonText" },
    TelescopeMatching               = { default = true, link = "Special" },
    TelescopePromptPrefix           = { default = true, link = "Identifier" },
    TelescopePreviewLine            = { default = true, link = "Visual" },
    TelescopePreviewMatch           = { default = true, link = "Search" },
    TelescopePreviewPipe            = { default = true, link = "Constant" },
    TelescopePreviewCharDev         = { default = true, link = "Constant" },
    TelescopePreviewDirectory       = { default = true, link = "Directory" },
    TelescopePreviewBlock           = { default = true, link = "Constant" },
    TelescopePreviewLink            = { default = true, link = "Special" },
    TelescopePreviewSocket          = { default = true, link = "Statement" },
    TelescopePreviewRead            = { default = true, link = "Constant" },
    TelescopePreviewWrite           = { default = true, link = "Statement" },
    TelescopePreviewExecute         = { default = true, link = "String" },
    TelescopePreviewHyphen          = { default = true, link = "NonText" },
    TelescopePreviewSticky          = { default = true, link = "Keyword" },
    TelescopePreviewSize            = { default = true, link = "String" },
    TelescopePreviewUser            = { default = true, link = "Constant" },
    TelescopePreviewGroup           = { default = true, link = "Constant" },
    TelescopePreviewDate            = { default = true, link = "Directory" },
    TelescopePreviewMessage         = { default = true, link = "TelescopePreviewNormal" },
    TelescopePreviewMessageFillchar = { default = true, link = "TelescopePreviewMessage" },
    TelescopeResultsClass           = { default = true, link = "Function" },
    TelescopeResultsConstant        = { default = true, link = "Constant" },
    TelescopeResultsField           = { default = true, link = "Function" },
    TelescopeResultsFunction        = { default = true, link = "Function" },
    TelescopeResultsMethod          = { default = true, link = "Method" },
    TelescopeResultsOperator        = { default = true, link = "Operator" },
    TelescopeResultsStruct          = { default = true, link = "Struct" },
    TelescopeResultsVariable        = { default = true, link = "SpecialChar" },
    TelescopeResultsLineNr          = { default = true, link = "LineNr" },
    TelescopeResultsIdentifier      = { default = true, link = "Identifier" },
    TelescopeResultsNumber          = { default = true, link = "Number" },
    TelescopeResultsComment         = { default = true, link = "Comment" },
    TelescopeResultsSpecialComment  = { default = true, link = "SpecialComment" },
    TelescopeResultsDiffChange      = { default = true, link = "DiffChange" },
    TelescopeResultsDiffAdd         = { default = true, link = "DiffAdd" },
    TelescopeResultsDiffDelete      = { default = true, link = "DiffDelete" },
    TelescopeResultsDiffUntracked   = { default = true, link = "NonText" },
  }
end

return M
