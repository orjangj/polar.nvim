-- https://github.com/folke/which-key.nvim

local M = {}

function M.get(spec, config, opts)
  local color = spec.color

  -- stylua: ignore
  return {
    WhichKey          = { fg = color.text.normal, style = "bold" },
    WhichKeyGroup     = { fg = color.foreground.focus },
    WhichKeySeperator = { fg = color.foreground.focus },
    WhichKeyDesc      = { fg = color.foreground.normal },
    WhichKeyFloat     = { bg = color.border.normal },
    WhichKeyBorder    = { link = "FloatBorder" },
    WhichKeyValue     = { link = "Comment" },
  }
end

return M
