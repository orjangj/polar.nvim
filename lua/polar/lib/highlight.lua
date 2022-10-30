local M = {}

local function parse_style(style)
  if not style or style == "NONE" then
    return {}
  end

  local result = {}
  for token in string.gmatch(style, "([^,]+)") do
    result[token] = true
  end

  return result
end

function M.highlight(highlights)
  for group, opts in pairs(highlights) do
    if opts.link and opts.link ~= "" then
      vim.api.nvim_set_hl(0, group, { link = opts.link })
    else
      local values = parse_style(opts.style)
      values.bg = opts.bg
      values.fg = opts.fg
      values.sp = opts.sp
      vim.api.nvim_set_hl(0, group, values)
    end
  end
end

return M
