-- https://github.com/lewis6991/gitsigns.nvim

local M = {}

function M.get(spec, config, opts)
  local color = spec.color

  -- stylua: ignore
  return {
		GitSignsAdd              = { fg = color.green }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr            = { fg = color.green }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn            = { fg = color.green }, -- diff mode: Added line |diff.txt|
		GitSignsChange           = { fg = color.yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr         = { fg = color.yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn         = { fg = color.yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete           = { fg = color.red }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr         = { fg = color.red }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn         = { fg = color.red }, -- diff mode: Deleted line |diff.txt|
		GitSignsCurrentLineBlame = { fg = color.comments, style = "bold" },
  }
end

return M
