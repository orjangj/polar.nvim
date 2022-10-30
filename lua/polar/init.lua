local M = {}

function M.load()
  local config = require("polar.config")
  local groups = require("polar.group")

  -- Initialize the environment
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  -- vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "polar"

  hl.highlight(groups)

  -- HACK: There is an issue with `nvim_set_hl` currently where calling `vim.api.nvim_get_hl_by_name("Normal", true)` will
  -- return `{ [true] = 6 }` if we are using this api_call then we have to set Normal with `:highlight` command to get
  -- around this for now
  if util.use_nvim_api then
    hl.alt_highlight({ Normal = groups.Normal })
  end

  -- TODO
  if config.options.terminal_colors then
    set_terminal_colors(spec)
  end
end

function M.setup(opts)
  if opts.options then
    M.init(opts.options)
  end
end

return M
