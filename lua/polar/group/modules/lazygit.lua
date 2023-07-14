-- https://github.com/kdheepak/lazygit.nvim

local M = {}

function M.get(spec, config, opts)
  local color = spec.color

  -- stylua: ignore
  return {
    LazyGitFloat  = { default = true, link = "Normal" },
    LazyGitBorder = { fg = color.border.normal },
  }
end

return M
