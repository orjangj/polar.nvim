-- https://github.com/TimUntersberger/neogit

local M = {}

function M.get(spec, config, opts)
  local color = spec.color

  -- stylua: ignore
  return {
    NeogitNotificationInfo     = { fg = color.text.focus },
    NeogitNotificationWarning  = { fg = color.text.urgent },
    NeogitNotificationError    = { fg = color.text.critical },
    --NeogitDiffAddHighlight     = {},
    --NeogitDiffDeleteHighlight  = {},
    NeogitDiffContextHighlight = { bg = color.codeblock },
    --NeogitHunkHeader           = {},
    --NeogitHunkHeaderHighlight  = {},
  }
end

return M
