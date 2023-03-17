local shade = require("polar.lib.shade")

local nord0 = "#2e3440"
local nord1 = "#3b4252"
local nord2 = "#434c5e"
local nord3 = "#4c566a"
local nord4 = "#d8dee9"
local nord5 = "#e5e9f0"
local nord6 = "#eceff4"
local nord7 = "#8fbcbb"
local nord8 = "#88c0d0"
local nord9 = "#81a1c1"
local nord10 = "#5e81ac"
local nord11 = "#bf616a"
local nord12 = "#d08770"
local nord13 = "#ebcb8b"
local nord14 = "#a3be8c"
local nord15 = "#b48ead"

local M = {}

-- Named colors
M.gray = nord3
M.red = nord11
M.green = nord14
M.black = nord0
M.yellow = nord13
M.blue = nord9
M.magenta = nord15
M.teal = nord7
M.cyan = nord8
M.white = nord5
M.orange = nord12

-- Editor
M.none = "NONE"
M.background = { normal = nord0, accent = nord1, focus = nord3 }
M.border = { normal = nord3, focus = M.cyan, urgent = M.yellow, critical = M.red }
M.cursorline = nord1
M.conceal = nord3
M.cursor = M.blue
M.codeblock = shade.darken(M.background.normal, 0.02)
M.directory = { normal = M.cyan, accent = M.blue }
M.filename = M.white
M.foreground = { normal = nord8, accent = nord7, focus = nord9, elevated = nord10 }
M.text = { normal = nord5, focus = M.cyan, urgent = M.yellow, critical = M.red }
M.search = M.yellow

-- Syntax
M.conditionals = M.blue
M.comments = shade.lighten(nord3, 0.10)
M.keywords = M.blue
M.constants = M.white
M.strings = M.green -- string, character
M.numbers = M.magenta -- number, float, boolean
M.functions = M.cyan -- declarations, calls and exec of funcs, methods and routines.
M.preprocs = nord10 -- pragmas, comment keywords, pre-processor statements
M.operators = M.blue
M.types = M.teal -- classes, types, primitives.
M.variables = M.white -- identifiers
M.special = M.cyan
M.diagnostic = {
  error = M.red,
  warning = M.yellow,
  success = M.green,
  info = M.blue,
  hint = M.magenta,
}
M.diff = {
  add = shade.blend(M.green, M.background.normal, 0.25),
  delete = shade.blend(M.red, M.background.normal, 0.25),
  change = shade.blend(M.background.accent, M.background.normal, 0.5),
  text = shade.blend(M.yellow, M.background.normal, 0.25),
}
M.terminal = {
  -- base
  M.black,
  M.red,
  M.green,
  M.yellow,
  M.blue,
  M.magenta,
  M.cyan,
  M.white,
  -- bright
  nord3,
  M.red,
  M.green,
  M.yellow,
  M.nord10,
  M.magenta,
  M.cyan,
  nord6,
}

return M
