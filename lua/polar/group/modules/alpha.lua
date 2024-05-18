-- https://github.com/goolord/alpha-nvim

local M = {}

function M.get(spec, config, opts)
  local color = spec.color
  -- stylua: ignore
  return {
    AlphaShortcut = { fg = color.blue },
    AlphaHeader = { fg = color.blue },
    AlphaHeaderLabel = { fg = color.blue },
    AlphaFooter = { fg = color.blue, style = "italic" },
    AlphaButtons = { fg = color.blue },
  }
end

return M
