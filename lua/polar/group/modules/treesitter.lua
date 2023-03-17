local M = {}

function M.get(spec, config, opts)
  local color = spec.color

  -- stylua: ignore
  return {
    ["@comment"]               = { default = true, link = "Comment" }, -- Line comments and block comments.
    -- Constants {{{
    ["@constant"]              = { default = true, link = "Constant" }, -- Constants identifiers. These might not be semantically constant.  E.g. uppercase variables in Python.
    ["@constant.comment"]      = { link = "Comment" },
    ["@constant.builtin"]      = { default = true, link = "PreProc" }, -- Built-in constant values: `nil` in Lua.
    ["@constant.macro"]        = { default = true, link = "Define" }, -- Constants defined by macros: `NULL` in C.
    ["@character"]             = { default = true, link = "Character" }, -- Character literals: `'a'` in C.
    ["@boolean"]               = { default = true, link = "Boolean" }, -- Boolean literals: `True` and `False` in Python.
    ["@float"]                 = { default = true, link = "Float" }, -- Floating-point number literals.
    ["@number"]                = { default = true, link = "Number" }, -- Numeric literals that don't fit into other categories.
    ["@string"]                = { default = true, link = "String" }, -- String literals.
    ["@string.regex"]          = { fg = color.strings, italic = true }, -- Regular expression literals.
    ["@string.escape"]         = { default = true, link = "SpecialChar" }, -- Escape characters within a string: `\n`, `\t`, etc.
    ["@string.special"]        = { default = true, link = "SpecialChar" }, -- Strings with special meaning that don't fit into the previous categories.
    -- }}}
    -- Identifiers {{{
    ["@constructor"]           = { default = true, link = "Special" }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ["@field"]                 = { default = true, link = "Identifier" }, -- Object and struct fields.
    ["@function"]              = { default = true, link = "Function" }, -- Function calls and definitions.
    ["@function.builtin"]      = { default = true, link = "Special" }, -- Built-in functions: `print` in Lua.
    ["@function.macro"]        = { default = true, link = "Macro" }, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    ["@namespace"]             = { default = true, link = "Identifier" }, -- Identifiers referring to modules and namespaces.
    ["@method"]                = { default = true, link = "Function" }, -- Method calls and definitions.
    ["@parameter"]             = { default = true, link = "Identifier" }, -- Parameters of a function.
    ["@property"]              = { default = true, link = "Identifier" }, -- Same as `@field`.
    ["@variable"]              = { default = true, link = "Identifier" }, -- Variable names that don't fit into other categories.
    ["@variable.builtin"]      = { link = "Special" }, -- Variable names defined by the language: `this` or `self` in Javascript.
    ["@macro"]                 = { link = "Macro" },
    -- }}}
    --Keywords {{{
    ["@conditional"]           = { default = true, link = "Conditional" }, -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    ["@exception"]             = { default = true, link = "Exception" }, -- Exception related keywords: `try`, `except`, `finally` in Python.
    ["@label"]                 = { default = true, link = "Label" }, -- GOTO labels: `label:` in C, and `::label::` in Lua.
    ["@include"]               = { default = true, link = "Include" }, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    ["@keyword"]               = { default = true, link = "keyword" }, -- Keywords that don't fit into other categories.
    ["@operator"]              = { default = true, link = "Operator" }, -- Binary or unary operators: `+`, and also `->` and `*` in C.
    ["@repeat"]                = { default = true, link = "Repeat" }, -- Keywords related to loops: `for`, `while`, etc.
    -- }}}
    -- Misc {{{
    ["@debug"]                 = { default = true, link = "Debug" },
    ["@error"]                 = { link = "Error" }, -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code.
    ["punctuation"]            = { default = true, link = "Delimiter" },
    ["@punctuation.delimiter"] = { fg = color.white }, -- Punctuation delimiters: Periods, commas, semicolons, etc.
    ["@punctuation.bracket"]   = { fg = color.white }, -- Brackets, braces, parentheses, etc.
    ["@punctuation.special"]   = { link = "Special" }, -- Special punctuation that doesn't fit into the previous categories.
    -- }}}
    -- Text {{{
    ["@text"]                  = { fg = color.text.normal }, -- Non-structured text. Like text in a markup language.
    ["@text.reference"]        = { fg = color.blue }, -- Footnotes, text references, citations, etc.
    ["@text.strong"]           = { fg = color.white, style = "bold" }, -- Text to be represented in bold.
    ["@text.emphasis"]         = { fg = color.white, style = "italic" }, -- Text to be represented with emphasis.
    ["@text.underline"]        = { fg = color.white, style = "underline" }, -- Text to be represented with an underline.
    ["@text.strike"]           = { fg = color.white, style = "strikethrough" }, -- Strikethrough text.
    ["@text.title"]            = { fg = color.cyan, style = "bold" }, -- Text that is part of a title.
    ["@text.literal"]          = { fg = color.green }, -- Literal or verbatim text.
    ["@text.uri"]              = { fg = color.white, style = "bold,italic" }, -- URIs like hyperlinks or email addresses.
    -- ["@text.math"]             = {}, -- Math environments like LaTeX's `$ ... $`
    -- ["@text.environment"]      = {}, -- Text environments of markup languages.
    -- ["@text.environment.name"] = {}, -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    ["@text.todo"]             = { fg = color.background.normal, bg = color.diagnostic.info }, -- todo notes
    ["@text.todo.checked"]     = { fg = color.green }, -- todo notes
    ["@text.todo.unchecked"]   = { fg = color.yellow }, -- todo notes
    ["@text.note"]             = { fg = color.background.normal, bg = color.diagnostic.hint }, -- Text representation of an informational note.
    ["@text.warning"]          = { fg = color.background.normal, bg = color.diagnostic.warning }, -- Text representation of a warning note.
    ["@text.danger"]           = { fg = color.background.normal, bg = color.diagnostic.error }, -- Text representation of a danger note.
    ["@text.diff.add"]         = { link = "DiffAdd" }, -- added text (for diff files)
    ["@text.diff.delete"]      = { link = "DiffDelete" }, -- deleted text (for diff files)
    -- }}}
    -- {{{ Types
    ["@attribute"]             = { default = true, link = "PreProc" }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    ["@storageclass"]          = { default = true, link = "StorageClass" },
    ["@structure"]             = { default = true, link = "Structure" },
    ["@type"]                  = { default = true, link = "Type" }, -- Type (and class) definitions and annotations.
    ["@type.builtin"]          = { link = "Special" }, -- Built-in types: `i32` in Rust.
    ["@type.definition"]       = { default = true, link = "Typedef" },
    -- }}}
    -- Tags {{{
    ["@tag"]                   = { default = true, link = "Tag" }, -- Tags like HTML tag names.
    ["@tag.attribute"]         = { link = "Function" }, -- HTML tag attributes.
    ["@tag.delimiter"]         = { link = "Delimiter" }, -- Tag delimiters like `<` `>` `/`.
    -- }}}
  }
end

return M
