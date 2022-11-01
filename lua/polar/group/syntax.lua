local M = {}

function M.get(spec, config)
  local palette = spec.palette
  local ui = spec.ui
  local syntax = spec.syntax
  local style = config.styles

  -- TODO: Add config style settings
  -- TODO: Go through list and align with Nord recommendations
  -- stylua: ignore
  return {
    Comment = { fg = syntax.comment, style = style.comments }, -- any comment

    Constant  = { fg = syntax.const, style = style.constants }, -- (preferred) any constant
    String    = { fg = syntax.string, style = style.strings }, -- a string constant: "this is a string"
    Character = { link = "String" }, -- a character constant: 'c', '\n'
    Number    = { fg = syntax.number, style = style.numbers }, -- a number constant: 234, 0xff
    Float     = { link = "Number" }, -- a floating point constant: 2.3e10
    Boolean   = { link = "Number" }, -- a boolean constant: TRUE, false

    Identifier = { fg = syntax.ident, style = style.variables }, -- (preferred) any variable name
    Function   = { fg = syntax.func, style = style.functions }, -- function name (also: methods for classes)

    Statement   = { fg = syntax.keyword, style = style.keywords }, -- (preferred) any statement
    Conditional = { fg = syntax.conditional, style = style.conditionals }, -- if, then, else, endif, switch, etc.
    Repeat      = { link = "Conditional" }, -- for, do, while, etc.
    Label       = { link = "Conditional" }, -- case, default, etc.
    Operator    = { fg = syntax.operator, style = style.operators }, -- "sizeof", "+", "*", etc.
    Keyword     = { fg = syntax.keyword, style = style.keywords }, -- any other keyword
    Exception   = { link = "Keyword" }, -- try, catch, throw

    PreProc   = { fg = syntax.preproc }, -- (preferred) generic Preprocessor
    Include   = { link = "PreProc" }, -- preprocessor #include
    Define    = { link = "PreProc" }, -- preprocessor #define
    Macro     = { link = "PreProc" }, -- same as Define
    PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

    Type         = { fg = syntax.type, style = style.types }, -- (preferred) int, long, char, etc.
    StorageClass = { link = "Type" }, -- static, register, volatile, etc.
    Structure    = { link = "Type" }, -- struct, union, enum, etc.
    Typedef      = { link = "Type" }, -- A typedef

    Special        = { fg = syntax.func }, -- (preferred) any special symbol
    SpecialChar    = { link = "Special" }, -- special character in a constant
    Tag            = { link = "Special" }, -- you can use CTRL-] on this
    Delimiter      = { link = "Special" }, -- character that needs attention
    SpecialComment = { link = "Special" }, -- special things inside a comment
    Debug          = { link = "Special" }, -- debugging statements

    Conceal    = { fg = "NONE", bg = ui.background.primary },
    Underlined = { style = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       = { style = "bold" },
    Italic     = { style = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         = {}, -- (preferred) left blank, hidden  |hl-Ignore|

    Error = { fg = palette.red }, -- (preferred) any erroneous construct
    Todo  = { fg = palette.cyan, bg = ui.background.primary }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    qfLineNr   = { link = "lineNr" },
    qfFileName = { link = "Directory" },

    -- Diff filetype (runtime/syntax/diff.vim)
    diffAdded     = { fg = palette.green }, -- Added lines ("^+.*" | "^>.*")
    diffRemoved   = { fg = palette.red }, -- Removed lines ("^-.*" | "^<.*")
    diffChanged   = { fg = palette.yellow }, -- Changed lines ("^! .*")
    diffOldFile   = { fg = palette.red, style = "bold" }, -- Old file that is being diff against
    diffNewFile   = { fg = palette.green, style = "bold" }, -- New file that is being compared to the old file
    diffFile      = { fg = palette.white, style = "bold" }, -- The filename of the diff ("diff --git a/readme.md b/readme.md")
    diffLine      = { fg = palette.white, style = "bold" }, -- Line information ("@@ -169,6 +169,9 @@")
    diffIndexLine = { fg = palette.white, style = "bold" }, -- Index line of diff ("index bf3763d..94f0f62 100644")

    htmlLink            = { fg = palette.green, style = "underline" },
    htmlH1              = { fg = palette.cyan, style = "bold" },
    htmlH2              = { fg = palette.red, style = "bold" },
    htmlH3              = { fg = palette.green, style = "bold" },
    htmlH4              = { fg = palette.magenta, style = "bold" },
    htmlH5              = { fg = palette.blue, style = "bold" },
    markdownH1          = { fg = palette.cyan, style = "bold" },
    markdownH2          = { fg = palette.red, style = "bold" },
    markdownH3          = { fg = palette.green, style = "bold" },
    markdownH1Delimiter = { fg = palette.cyan },
    markdownH2Delimiter = { fg = palette.red },
    markdownH3Delimiter = { fg = palette.green },
    -- markdownHeadingDelimiter = {},
    -- markdownCode             = {},
    -- markdownCodeBlock        = {},
    -- markdownH1               = {},
    -- markdownH2               = {},
    -- markdownLinkText         = {},

  }
end

return M
