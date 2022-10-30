-- https://github.com/lewis6991/gitsigns.nvim

local M = {}

function M.get(spec, config, opts)
  local palette = spec.palette

  -- stylua: ignore
  return {
		GitSignsAdd              = { fg = palette.green }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr            = { fg = palette.green }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn            = { fg = palette.green }, -- diff mode: Added line |diff.txt|
		GitSignsChange           = { fg = palette.yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr         = { fg = palette.yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn         = { fg = palette.yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete           = { fg = palette.red }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr         = { fg = palette.red }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn         = { fg = palette.red }, -- diff mode: Deleted line |diff.txt|
		GitSignsCurrentLineBlame = { fg = palette.comment, style = "bold" },
  }
end

return M
