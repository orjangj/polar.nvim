local M = {}

function M.get(spec, config, opts)
  local palette = spec.palette
  local syntax = spec.syntax
  local ui = spec.ui
  local style = config.styles

  if not vim.treesitter.highlighter.hl_map then -- https://github.com/nvim-treesitter/nvim-treesitter/pull/3365
    -- stylua: ignore
    return {
      ["@attribute"]           = { fg = palette.magenta }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
      ["@boolean"]             = { link = "Boolean" }, -- Boolean literals: `True` and `False` in Python.
      ["@character"]           = { link = "Character" }, -- Character literals: `'a'` in C.
      ["@comment"]             = { link = "Comment" }, -- Line comments and block comments.
      ["@conditional"]         = { link = "Conditional" }, -- Keywords related to conditionals: `if`, `when`, `cond`, etc.

      ["@constant"]            = { link = "Constant" }, -- Constants identifiers. These might not be semantically constant.  E.g. uppercase variables in Python.
      ["@constant.builtin"]    = { fg = syntax.builtin2, style = style.constants }, -- Built-in constant values: `nil` in Lua.
      ["@constant.macro"]      = { fg = syntax.builtin2, style = style.constants }, -- Constants defined by macros: `NULL` in C.

      ["@constructor"]           = { fg = syntax.keyword }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
      ["@error"]                 = { fg = palette.red }, -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
      -- ["@exception"]           = {}, -- Exception related keywords: `try`, `except`, `finally` in Python.
      ["@field"]                 = { fg = syntax.field }, -- Object and struct fields.
      ["@float"]                 = { link = "Constant" }, -- Floating-point number literals.
      -- ["@function"]            = {}, -- Function calls and definitions.
      ["@function.builtin"]      = { fg = syntax.builtin0, style = style.functions }, -- Built-in functions: `print` in Lua.
      ["@function.macro"]        = { fg = syntax.builtin0, style = style.functions }, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
      -- ["@include"]             = {}, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
      -- ["@keyword"]             = {}, -- Keywords that don't fit into other categories.
      ["@keyword.function"]      = { fg = syntax.builtin0, style = style.functions }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
      ["@keyword.operator"]      = { fg = syntax.operator, style = "bold" }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
      -- ["@keyword.return"]      = {}, -- Keywords like `return` and `yield`.
      ["@label"]                 = { fg = palette.blue }, -- GOTO labels: `label:` in C, and `::label::` in Lua.
      -- ["@method"]              = {}, -- Method calls and definitions.
      ["@namespace"]             = { fg = syntax.builtin1 }, -- Identifiers referring to modules and namespaces.
      -- ["@none"]                = {}, -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
      ["@number"]                = { link = "Constant" }, -- Numeric literals that don't fit into other categories.
      ["@operator"]              = { fg = syntax.operator, style = style.operators }, -- Binary or unary operators: `+`, and also `->` and `*` in C.
      -- ["@parameter"]           = {}, -- Parameters of a function.
      -- ["@parameter.reference"] = {}, -- References to parameters of a function.
      ["@property"]              = { link = "@field" }, -- Same as `@field`.

      ["@punctuation.delimiter"] = { fg = syntax.bracket }, -- Punctuation delimiters: Periods, commas, semicolons, etc.
      ["@punctuation.bracket"]   = { fg = syntax.bracket }, -- Brackets, braces, parentheses, etc.
      ["@punctuation.special"]   = { fg = syntax.bracket }, -- Special punctuation that doesn't fit into the previous categories.

      -- ["@repeat"]              = {}, -- Keywords related to loops: `for`, `while`, etc.
      ["@string"]                = { link = "String" }, -- String literals.
      ["@string.regex"]          = { fg = syntax.regex, style = style.strings }, -- Regular expression literals.
      ["@string.escape"]         = { fg = syntax.regex, style = "bold" }, -- Escape characters within a string: `\n`, `\t`, etc.
      ["@string.special"]        = { link = "Special" }, -- Strings with special meaning that don't fit into the previous categories.
      -- ["@symbol"]              = {}, -- Identifiers referring to symbols or atoms.
      ["@tag"]                   = { link = "Keyword" }, -- Tags like HTML tag names.
      ["@tag.attribute"]         = { link = "Function" }, -- HTML tag attributes.
      ["@tag.delimiter"]         = { link = "Delimiter" }, -- Tag delimiters like `<` `>` `/`.

      ["@text"]                  = { fg = palette.white }, -- Non-structured text. Like text in a markup language.
      ["@text.reference"]        = { fg = syntax.keyword }, -- Footnotes, text references, citations, etc.
      ["@text.strong"]           = { fg = palette.white, style = "bold" }, -- Text to be represented in bold.
      ["@text.emphasis"]         = { fg = palette.white, style = "italic" }, -- Text to be represented with emphasis.
      ["@text.underline"]        = { fg = palette.white, style = "underline" }, -- Text to be represented with an underline.
      ["@text.strike"]           = { fg = palette.white, style = "strikethrough" }, -- Strikethrough text.
      ["@text.title"]            = { fg = palette.cyan, style = "bold" }, -- Text that is part of a title.
      ["@text.literal"]          = { fg = palette.green }, -- Literal or verbatim text.
      ["@text.uri"]              = { fg = syntax.ident, style = "bold" }, -- URIs like hyperlinks or email addresses.
      -- ["@text.math"]                = {}, -- Math environments like LaTeX's `$ ... $`
      -- ["@text.environment"]         = {}, -- Text environments of markup languages.
      -- ["@text.environment.name"]    = {}, -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
      ["@text.todo"]             = { fg = ui.background.primary, bg = palette.yellow }, -- todo notes
      ["@text.todo.checked"]     = { fg = palette.green }, -- todo notes
      ["@text.todo.unchecked"]   = { fg = palette.yellow }, -- todo notes
      ["@text.note"]             = { fg = palette.orange }, -- Text representation of an informational note.
      ["@text.warning"]          = { fg = palette.yellow }, -- Text representation of a warning note.
      ["@text.danger"]           = { fg = palette.red }, -- Text representation of a danger note.
      ["@text.diff.add"]         = { link = "diffAdded" }, -- added text (for diff files)
		  ["@text.diff.delete"]      = { link = "diffRemoved" }, -- deleted text (for diff files)

      ["@type"]                  = { link = "Type" }, -- Type (and class) definitions and annotations.
      ["@type.builtin"]          = { fg = syntax.builtin1, style = style.types }, -- Built-in types: `i32` in Rust.
      ["@variable"]              = { fg = syntax.variable, style = style.variables }, -- Variable names that don't fit into other categories.
      ["@variable.builtin"]      = { fg = syntax.builtin0, style = style.variables }, -- Variable names defined by the language: `this` or `self` in Javascript.

      -- Languages ---------------------------------------------------------------
      -- Rust
      ["@field.rust"] = { fg = palette.white },

      -- Javascript/Typescript
      ["@tag.javascript"] = { fg = syntax.builtin0 }, -- Tags like HTML tag names.
      ["@tag.typescript"] = { fg = syntax.builtin0 }, -- Tags like HTML tag names.
    }
  else
    -- stylua: ignore
    return {
      TSAttribute       = { link = "Constant" }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
      -- TSBoolean            = {}, -- Boolean literals: `True` and `False` in Python.
      -- TSCharacter          = {}, -- Character literals: `'a'` in C.
      -- TSComment            = {}, -- Line comments and block comments.
      -- TSConditional        = {}, -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
      -- TSConstant           = {}, -- Constants identifiers. These might not be semantically constant.  E.g. uppercase variables in Python.
      TSConstBuiltin    = { fg = syntax.builtin2, style = style.constants }, -- Built-in constant values: `nil` in Lua.
      -- TSConstMacro         = {}, -- Constants defined by macros: `NULL` in C.
      TSConstructor     = { fg = syntax.keyword }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
      TSError           = { fg = palette.red }, -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
      -- TSException          = {}, -- Exception related keywords: `try`, `except`, `finally` in Python.
      TSField           = { fg = syntax.field }, -- Object and struct fields.
      -- TSFloat              = {}, -- Floating-point number literals.
      -- TSFunction           = {}, -- Function calls and definitions.
      TSFuncBuiltin     = { fg = syntax.builtin0, style = style.functions }, -- Built-in functions: `print` in Lua.
      TSFuncMacro       = { fg = syntax.builtin0, style = style.functions }, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
      -- TSInclude            = {}, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
      -- TSKeyword            = {}, -- Keywords that don't fit into other categories.
      TSKeywordFunction = { fg = syntax.builtin0, style = style.functions }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
      TSKeywordOperator = { fg = syntax.operator, style = "bold" }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
      -- TSKeywordReturn      = {}, -- Keywords like `return` and `yield`.
      -- TSLabel              = {}, -- GOTO labels: `label:` in C, and `::label::` in Lua.
      -- TSMethod             = {}, -- Method calls and definitions.
      TSNamespace       = { fg = syntax.builtin1 }, -- Identifiers referring to modules and namespaces.
      -- TSNone               = {}, -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
      -- TSNumber             = {}, -- Numeric literals that don't fit into other categories.
      TSOperator        = { fg = syntax.operator, style = style.operators }, -- Binary or unary operators: `+`, and also `->` and `*` in C.
      -- TSParameter          = {}, -- Parameters of a function.
      -- TSParameterReference = {}, -- References to parameters of a function.
      TSProperty        = { link = "TSField" }, -- Same as `TSField`.
      TSPunctDelimiter  = { fg = syntax.bracket }, -- Punctuation delimiters: Periods, commas, semicolons, etc.
      TSPunctBracket    = { fg = syntax.bracket }, -- Brackets, braces, parentheses, etc.
      TSPunctSpecial    = { fg = syntax.bracket }, -- Special punctuation that doesn't fit into the previous categories.
      -- TSRepeat             = {}, -- Keywords related to loops: `for`, `while`, etc.
      -- TSString             = {}, -- String literals.
      TSStringRegex     = { fg = syntax.regex, style = style.strings }, -- Regular expression literals.
      TSStringEscape    = { fg = syntax.regex, style = "bold" }, -- Escape characters within a string: `\n`, `\t`, etc.
      -- TSStringSpecial      = {}, -- Strings with special meaning that don't fit into the previous categories.
      -- TSSymbol             = {}, -- Identifiers referring to symbols or atoms.
      -- TSTag                = {}, -- Tags like HTML tag names.
      -- TSTagAttribute       = {}, -- HTML tag attributes.
      -- TSTagDelimiter       = {}, -- Tag delimiters like `<` `>` `/`.
      -- TSText               = {}, -- Non-structured text. Like text in a markup language.
      -- TSStrong             = {}, -- Text to be represented in bold.
      -- TSEmphasis           = {}, -- Text to be represented with emphasis.
      -- TSUnderline          = {}, -- Text to be represented with an underline.
      -- TSStrike             = {}, -- Strikethrough text.
      -- TSTitle              = {}, -- Text that is part of a title.
      -- TSLiteral            = {}, -- Literal or verbatim text.
      TSURI             = { fg = syntax.ident, style = "bold" }, -- URIs like hyperlinks or email addresses.
      -- TSMath               = {}, -- Math environments like LaTeX's `$ ... $`
      TSTextReference   = { fg = syntax.keyword }, -- Footnotes, text references, citations, etc.
      -- TSEnvironment        = {}, -- Text environments of markup languages.
      -- TSEnvironmentName    = {}, -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
      TSNote            = { fg = palette.orange }, -- Text representation of an informational note.
      TSWarning         = { fg = palette.yellow }, -- Text representation of a warning note.
      TSDanger          = { fg = palette.red }, -- Text representation of a danger note.
      -- TSType               = {}, -- Type (and class) definitions and annotations.
      TSTypeBuiltin     = { fg = syntax.builtin1, style = style.types }, -- Built-in types: `i32` in Rust.
      TSVariable        = { fg = syntax.variable, style = style.variables }, -- Variable names that don't fit into other categories.
      TSVariableBuiltin = { fg = syntax.builtin0, style = style.variables }, -- Variable names defined by the language: `this` or `self` in Javascript.

      -- Languages ---------------------------------------------------------------
      -- Rust
      rustTSField = { fg = palette.white },
    }
  end
end

return M
