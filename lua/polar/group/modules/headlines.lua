-- https://github.com/lukas-reineke/headlines.nvim

local M = {}

function M.get(spec, config, opts)
  local color = spec.color

  -- stylua: ignore
  return {
    Headline1 = { fg = color.cyan,    bg = color.background.accent, style = "bold" },
    Headline2 = { fg = color.teal,    bg = color.background.accent, style = "bold" },
    Headline3 = { fg = color.blue,    bg = color.background.accent, style = "bold" },
    Headline4 = { fg = color.green,   bg = color.background.accent, style = "bold" },
    Headline5 = { fg = color.magenta, bg = color.background.accent, style = "bold" },
    Headline6 = { fg = color.white,   bg = color.background.accent, style = "bold" },
    Quote     = { link = "Comment" },
    CodeBlock = { bg = color.codeblock },
    Dash      = { color.green, style = "bold" },
  }
end

return M
