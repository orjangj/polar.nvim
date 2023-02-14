local shade = require("polar.palette.shade")

local M = {}

-- TODO: make private?
M.nord0   = "#2e3440" -- UI: background and area coloring.             | Syntax: none.
M.nord1   = "#3b4252" -- UI: Status bar, panels, floating popups, etc. | Syntax: none.
M.nord2   = "#434c5e" -- UI: currently active text editor line.        | Syntax: none.
M.nord3   = "#4c566a" -- UI: Indent- and wrap guide marker.            | Syntax: Comments, invisible/non-printable characters.
M.nord4   = "#d8dee9" -- UI: Things like text-editor caret.            | Syntax: variables, constants, attributes and fields.
M.nord5   = "#e5e9f0" -- UI: Subtle text elements.                     | Syntax: none.
M.nord6   = "#eceff4" -- UI: Elevated text elements.                   | Syntax: Plain text color, structuring characters like curly and square brackets.
M.nord7   = "#8fbcbb" -- UI: Primary elements (accent color).          | Syntax: Classes, types, primitives.
M.nord8   = "#88c0d0" -- UI: Primary elements.                         | Syntax: declarations, calls and exec of funcs, methods and routines.
M.nord9   = "#81a1c1" -- UI: Secondary elements.                       | Syntax: language specific, syntactic and reserved keywords (i.e. operators, tags, units, ...)
M.nord10  = "#5e81ac" -- UI: Tertiary elements.                        | Syntax: pragmas, comment keywords, pre-processor statements
M.nord11  = "#bf616a" -- UI: Error states, linter markers, git diff.   | Syntax: Override highlighting of elements that are detected as errors.
M.nord12  = "#d08770" -- UI: Rarely used.                              | Syntax: Annotations and decorators
M.nord13  = "#ebcb8b" -- UI: Warning states, linter markers, git diff. | Syntax: Override highlighting of elements that are detected as warnings.
M.nord14  = "#a3be8c" -- UI: Success states, linter markers, git diff. | Syntax: Main color for strings of any type.
M.nord15  = "#b48ead" -- UI: Rarely used.                              | Syntax: Numbers of any type.

M.comment = shade.lighten(M.nord3, 10)
M.codeblock = shade.darken(M.nord0, 2)

-- TODO: encapsulate in M.color = { }?
-- TODO: create base, dim and light color versions using shade.darken() and shade.lighten() ?
M.black   = M.nord0
M.red     = M.nord11
M.green   = M.nord14
M.yellow  = M.nord13
M.blue    = M.nord9
M.magenta = M.nord15
M.teal    = M.nord7
M.cyan    = M.nord8
M.white   = M.nord4
M.orange  = M.nord12

-- TODO: Split into M.background, M.text, M.element?
M.ui = {
  background = { primary = M.nord0, secondary = M.nord1, accent = M.nord2, elevated = M.nord3  },
  text       = { primary = M.nord4, secondary = M.nord5, accent = M.nord6, elevated = M.nord6  },
  element    = { primary = M.nord8, secondary = M.nord9, accent = M.nord7, elevated = M.nord10 },
}

M.diagnostic = { error = M.red, warning = M.yellow, info = M.magenta, hint = M.orange }

-- TODO: Create a terminal.lua?
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
