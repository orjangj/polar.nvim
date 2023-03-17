local M = {}

function M.get(spec, config, opts)
  local color = spec.color

  -- stylua: ignore
  return {
    ["@neorg.markup.verbatim"] = { link = "Comment" }, -- Line comments and block comments.
    ["@neorg.markup.inline_comment"] = { link = "Comment" },
  }
end

return M
