local M = {}

function M.get(spec, config)
  local color = spec.color
  local style = config.styles

  -- stylua: ignore
  return {
    Comment        = { fg = color.comments, style = style.comments }, -- any comment
    -- Constants {{{
    Constant       = { fg = color.constants, style = style.constants }, -- any constant
    String         = { fg = color.strings, style = style.strings }, -- a string constant: "this is a string"
    Character      = { link = "String" }, -- a character constant: 'c', '\n'
    Number         = { fg = color.numbers, style = style.numbers }, -- a number constant: 234, 0xff
    Boolean        = { link = "Number" }, -- a boolean constant: TRUE, false
    Float          = { link = "Number" }, -- a floating point constant: 2.3e10
    -- }}}
    -- Identifiers {{{
    Identifier     = { fg = color.variables, style = style.variables }, -- any variable name
    Function       = { fg = color.functions, style = style.functions }, -- function name (also: methods for classes)
    -- }}}
    -- Statements {{{
    Statement      = { fg = color.keywords, style = style.keywords }, -- (preferred) any statement
    Conditional    = { fg = color.conditionals, style = style.conditionals }, -- if, then, else, endif, switch, etc.
    Repeat         = { link = "Conditional" }, -- for, do, while, etc.
    Label          = { link = "Conditional" }, -- case, default, etc.
    Operator       = { fg = color.operators, style = style.operators }, -- "sizeof", "+", "*", etc.
    Keyword        = { link = "Operator" }, -- any other keyword
    Exception      = { link = "Operator" }, -- try, catch, throw
    -- }}}
    -- Preprocessor {{{
    PreProc        = { fg = color.preprocs }, -- (preferred) generic Preprocessor
    Include        = { link = "PreProc" }, -- preprocessor #include
    Define         = { link = "PreProc" }, -- preprocessor #define
    Macro          = { link = "PreProc" }, -- same as Define
    PreCondit      = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.
    -- }}}
    -- Types {{{
    Type           = { fg = color.types, style = style.types }, -- (preferred) int, long, char, etc.
    StorageClass   = { link = "Type" }, -- static, register, volatile, etc.
    Structure      = { link = "Type" }, -- struct, union, enum, etc.
    Typedef        = { link = "Type" }, -- A typedef
    -- }}}
    -- Special {{{
    Special        = { fg = color.special }, -- (preferred) any special symbol
    SpecialChar    = { link = "Special" }, -- special character in a constant
    Tag            = { link = "Special" }, -- you can use CTRL-] on this
    Delimiter      = { link = "Special" }, -- character that needs attention
    SpecialComment = { link = "Special" }, -- special things inside a comment
    Debug          = { link = "Special" }, -- debugging statements
    -- }}}
    Underlined     = { style = "underline" }, -- (preferred) text that stands out, HTML links
    Bold           = { style = "bold" },
    Italic         = { style = "italic" },
    -- Ignore         = {}, -- (preferred) left blank, hidden  |hl-Ignore|
    Error          = { fg = color.diagnostic.error }, -- (preferred) any erroneous construct
    Todo           = { fg = color.background.normal, bg = color.diagnostic.info }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    -- Misc {{{
    healthError    = { fg = color.diagnostic.error },
    healthWarning  = { fg = color.diagnostic.warning },
    healthSuccess  = { fg = color.diagnostic.success },
    qfLineNr       = { link = "lineNr" },
    qfFileName     = { link = "Directory" },
    diffAdded      = { fg = color.green }, -- Added lines ("^+.*" | "^>.*")
    diffRemoved    = { fg = color.red }, -- Removed lines ("^-.*" | "^<.*")
    diffChanged    = { fg = color.yellow }, -- Changed lines ("^! .*")
    diffOldFile    = { fg = color.red, style = "bold" }, -- Old file that is being diff against
    diffNewFile    = { fg = color.green, style = "bold" }, -- New file that is being compared to the old file
    diffFile       = { fg = color.white, style = "bold" }, -- The filename of the diff ("diff --git a/readme.md b/readme.md")
    diffLine       = { fg = color.white, style = "bold" }, -- Line information ("@@ -169,6 +169,9 @@")
    diffIndexLine  = { fg = color.white, style = "bold" }, -- Index line of diff ("index bf3763d..94f0f62 100644")
    htmlLink       = { fg = color.green, style = "underline" },
    htmlH1         = { fg = color.cyan, style = "bold" },
    htmlH2         = { fg = color.teal, style = "bold" },
    htmlH3         = { fg = color.blue, style = "bold" },
    htmlH4         = { fg = color.magenta, style = "bold" },
    htmlH5         = { fg = color.green, style = "bold" },
    markdownH1     = { fg = color.cyan, style = "bold" },
    markdownH2     = { fg = color.teal, style = "bold" },
    markdownH3     = { fg = color.blue, style = "bold" },
    markdownH4     = { fg = color.magenta, style = "bold" },
    markdownH5     = { fg = color.green, style = "bold" },
    markdownH6     = { fg = color.white, style = "bold" },
    markdownH1Delimiter = { link = "markdownH1" },
    markdownH2Delimiter = { link = "markdownH2" },
    markdownH3Delimiter = { link = "markdownH3" },
    markdownH4Delimiter = { link = "markdownH4" },
    markdownH5Delimiter = { link = "markdownH5" },
    markdownH6Delimiter = { link = "markdownH6" },
    --markdownBlockquote = { fg = colors.light_gray },
    --markdownBold = { fg = colors.purple, style = "bold" },
    --markdownCode = { fg = colors.green },
    --markdownCodeBlock = { fg = palette.green, bg = palette.green },
    --markdownCodeDelimiter = { fg = colors.green },
    --markdownId = { fg = colors.yellow },
    --markdownIdDeclaration = { fg = colors.purple },
    --markdownIdDelimiter = { fg = colors.light_gray },
    --markdownLinkDelimiter = { fg = colors.light_gray },
    --markdownItalic = { fg = colors.yellow, style = "italic" },
    --markdownLinkText = { fg = colors.purple },
    --markdownListMarker = { fg = colors.red },
    --markdownOrderedListMarker = { fg = colors.red },
    --markdownRule = { fg = colors.purple },
    --markdownUrl = { fg = colors.cyan, style = "underline" },
    -- }}}
  }
end

return M
