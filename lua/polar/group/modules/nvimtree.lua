-- https://github.com/kyazdani42/nvim-tree.lua

local M = {}

function M.get(spec, config, opts)
  local palette = spec.palette
  local ui = spec.ui

  -- stylua: ignore
  return {
    NvimTreeNormal           = { fg = ui.text.primary, bg = config.transparent and "NONE" or ui.background.primary },
    NvimTreeVertSplit        = { link = "VertSplit" },
    NvimTreeIndentMarker     = { fg = ui.background.elevated },
    NvimTreeRootFolder       = { fg = ui.element.primary, style = "bold" },
    NvimTreeFolderName       = { fg = ui.element.secondary },
    NvimTreeFolderIcon       = { fg = ui.element.secondary },
    NvimTreeOpenedFolderName = { fg = ui.element.elevated },
    NvimTreeEmptyFolderName  = { fg = ui.background.accent },
    NvimTreeSymlink          = { fg = palette.magenta },
    NvimTreeSpecialFile      = { fg = ui.text.primary },
    NvimTreeImageFile        = { fg = ui.text.primary },
    NvimTreeOpenedFile       = { fg = ui.element.accent },
    NvimTreeGitDeleted       = { fg = palette.red },
    NvimTreeGitDirty         = { fg = palette.yellow },
    NvimTreeGitMerge         = { fg = palette.magenta },
    NvimTreeGitNew           = { fg = palette.green },
    NvimTreeGitRenamed       = { link = "NvimTreeGitDeleted" },
    NvimTreeGitStaged        = { link = "NvimTreeGitStaged" },
  }
end

return M
