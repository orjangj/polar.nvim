-- https://github.com/folke/which-key.nvim

local M = {}

function M.get(spec, config, opts)
  local color = spec.color

  -- stylua: ignore
  return {
    WhichKey          = { fg = color.text.normal, style = "bold" },
    WhichKeyGroup     = { fg = color.foreground.focus },
    WhichKeySeparator = { default = true, link = "Comment" },
    WhichKeyDesc      = { fg = color.foreground.normal },
    WhichKeyFloat     = { default = true, link = "NormalFloat" },
    WhichKeyBorder    = { default = true, link = "FloatBorder" },
    WhichKeyValue     = { default = true, link = "Comment" },
  }
end

return M
