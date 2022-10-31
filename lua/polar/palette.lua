local M = {}

M.nord0   = "#2e3440" -- UI: background and area coloring. Syntax: none.
M.nord1   = "#3b4252" -- UI: Status bar, panels, floating popups, etc. Syntax: none.
M.nord2   = "#434c5e" -- UI: currently active text editor line. Syntax: none.
M.nord3   = "#4c566a" -- UI: Indent- and wrap guide marker. Syntax: Comments, invisible/non-printable characters.
M.nord4   = "#d8dee9" -- UI: Things like text-editor caret. Syntax: variables, constants, attributes and fields.
M.nord5   = "#e5e9f0" -- UI: Subtle text elements. Syntax: none.
M.nord6   = "#eceff4" -- UI: Elevated text elements. Syntax: Plain text color, structuring characters like curly and square brackets.
M.nord7   = "#8fbcbb" -- UI: Primary accent/alternate color. Syntax: Classes, types, primitives.
M.nord8   = "#88c0d0" -- UI: Primary elements. Syntax: declarations, calls and exec of funcs, methods and routines.
M.nord9   = "#81a1c1" -- UI: Secondary elements. Syntax: language specific, syntactic and reserved keywords (i.e. operators, tags, units, ...)
M.nord10  = "#5e81ac" -- UI: Tertiary elements. Syntax: pragmas, comment keywords, pre-processor statements
M.nord11  = "#bf616a" -- UI: Error states, linter markers, git diff. Syntax: Override highlighting of elements that are detected as errors.
M.nord12  = "#d08770" -- UI: Rarely used. Syntax: Annotations and decorators
M.nord13  = "#ebcb8b" -- UI: Warning states, linter markers, git diff. Syntax: Override highlighting of elements that are detected as warnings.
M.nord14  = "#a3be8c" -- UI: Success states, linter markers, git diff. Syntax: Main color for strings of any type.
M.nord15  = "#b48ead" -- UI: Rarely used. Syntax: Numbers of any type.
M.comment = "#576279" -- nord3 adjusted by 5% according to https://github.com/arcticicestudio/nord/issues/94
M.black   = M.nord0
M.red     = M.nord11
M.green   = M.nord14
M.yellow  = M.nord13
M.blue    = M.nord9
M.magenta = M.nord15
M.cyan    = M.nord8
M.white   = M.nord4
M.orange  = M.nord12
M.ui = {
  background = { primary = M.nord0, secondary = M.nord1, accent = M.nord3, elevated = M.nord4  },
  text       = { primary = M.nord4, secondary = M.nord5, accent = M.nord6, elevated = M.nord6  },
  element    = { primary = M.nord8, secondary = M.nord9, accent = M.nord7, elevated = M.nord10 },
}
M.syntax = {
  bracket     = M.white,
  builtin0    = M.blue,    -- C++: this. Lua: function, require,
  builtin1    = M.magenta, -- C++: namespace names
  builtin2    = M.magenta, -- C++: NULL, Lua: nil
  builtin3    = M.magenta,
  comment     = M.comment,
  conditional = M.blue,
  const       = M.white,   -- TODO: another color? applies to enum values?
  dep         = M.magenta,
  field       = M.white,   -- struct/class/enum variables
  func        = M.cyan,
  ident       = M.white,   -- C++: function parameters
  keyword     = M.blue,
  number      = M.magenta,
  operator    = M.blue,
  preproc     = M.blue,
  regex       = M.yellow,
  statement   = M.magenta,
  string      = M.green,
  type        = M.nord7,   -- TODO
  variable    = M.white,
}
M.terminal = {
  -- base
  M.black, M.red,
  M.green, M.yellow,
  M.blue,  M.magenta,
  M.cyan,  M.white,
  -- bright
  M.nord3, M.red,
  M.green, M.yellow,
  M.nord10, M.magenta,
  M.nord7, M.nord6
}

return M
