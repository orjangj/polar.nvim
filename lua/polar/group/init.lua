local collect = require("polar.lib.collect")

local M = {}

function M.ls(path, fn)
  -- Borrowed from https://github.com/folke/lazy.nvim
  local handle = vim.loop.fs_scandir(path)
  while handle do
    local name, t = vim.loop.fs_scandir_next(handle)

    if not name then
      break
    end

    local fname = path .. "/" .. name

    -- HACK: type is not always returned due to a bug in luv,
    -- so fecth it with fs_stat instead when needed.
    -- see https://github.com/folke/lazy.nvim/issues/306
    if fn(fname, name, t or vim.loop.fs_stat(fname).type) == false then
      break
    end
  end
end

function M.load(spec)
  local opts = require("polar.config").options
  local editor = require("polar.group.editor").get(spec, opts)
  local syntax = require("polar.group.syntax").get(spec, opts)

  local result = collect.deep_extend(editor, syntax)

  local modules = {}
  local this_dir = vim.fn.fnamemodify(debug.getinfo(1).source:gsub("@", ""), ":h")

  M.ls(this_dir .. "/modules", function(_, name, type)
    if type == "file" then
      modules[#modules + 1] = name:gsub("%..*", "")
    end
  end)

  for _, name in ipairs(modules) do
    result = collect.deep_extend(result, require("polar.group.modules." .. name).get(spec, opts, {}))
  end

  return result
end

return M
