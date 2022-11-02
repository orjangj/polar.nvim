-- https://github.com/kyazdani42/nvim-tree.lua

local M = {}

function M.get(spec, config, opts)
  local palette = spec.palette
  local ui = spec.ui

  -- stylua: ignore
  return {
    -- NOTE: Keys with values matching pattern { default = true, link = ... }
    -- are the defaults set by NvimTree. They're only included here for
    -- completeness and easy access if they need to be changed.

    NvimTreeSymlink          = { fg = palette.magenta, style = "bold" },
    NvimTreeFolderName       = { default = true, link = "Directory" },
    NvimTreeRootFolder       = { fg = ui.element.primary, style = "bold" },
    NvimTreeFolderIcon       = { fg = ui.element.secondary },
    NvimTreeFileIcon         = { fg = ui.element.primary },
    NvimTreeEmptyFolderName  = { fg = ui.background.accent }, -- { default = true, link = "Directory" }
    NvimTreeOpenedFolderName = { fg = ui.element.accent }, -- { default = true, link = "Directory" }
    NvimTreeExecFile         = { fg = palette.green, style = "bold" },
    NvimTreeOpenedFile       = { fg = ui.element.accent, style = "bold" }, -- TODO: doesn't seem to have any effect
    NvimTreeSpecialFile      = { fg = ui.text.primary, style = "underline" }, -- TODO
    NvimTreeImageFile        = { fg = ui.text.primary, style = "bold" }, -- TODO
    NvimTreeIndentMarker     = { fg = ui.background.elevated },

    NvimTreeLspDiagnosticsError       = { default = true, link = "DiagnosticError" },
    NvimTreeLspDiagnosticsWarning     = { default = true, link = "DiagnosticWarn" },
    NvimTreeLspDiagnosticsInformation = { default = true, link = "DiagnosticInfo" },
    NvimTreeLspDiagnosticsHint        = { default = true, link = "DiagnosticHint" },

    NvimTreeGitDirty   = { fg = palette.yellow },
    NvimTreeGitStaged  = { fg = palette.green },
    NvimTreeGitMerge   = { fg = palette.magenta },
    NvimTreeGitRenamed = { link = "NvimTreeGitDeleted" },
    NvimTreeGitNew     = { link = "NvimTreeGitDeleted" },
    NvimTreeGitDeleted = { fg = palette.red },
    NvimTreeGitIgnored = { default = true, link = "Comment" },

    -- NvimTreeWindowPicker

    -- There are also links to normal bindings to style the tree itself.
    NvimTreeNormal       = { fg = ui.text.primary, bg = config.transparent and "NONE" or ui.background.secondary },
    NvimTreeEndOfBuffer  = { fg = config.transparent and "NONE" or ui.background.secondary }, -- { default = true, link = "NonText" },
    NvimTreeCursorLine   = { default = true, link = "CursorLine" },
    NvimTreeCursorLineNr = { default = true, link = "CursorLineNr" },
    NvimTreeLineNr       = { default = true, link = "LineNr" },
    NvimTreeWinSeparator = {
      -- NOTE: Match bg of NvimTreeNormal
      fg = config.transparent and "NONE" or ui.background.secondary,
      bg = config.transparent and "NONE" or ui.background.secondary
    },
    NvimTreeVertSplit    = { link = "NvimTreeWinSeparator" },  -- deprecated?
    NvimTreeCursorColumn = { default = true, link = "CursorColumn" },

    -- There are also links for file highlight with git properties, linked to their Git equivalent.
    NvimTreeFileDirty   = { default = true, link = "NvimTreeGitDirty" },
    NvimTreeFileStaged  = { default = true, link = "NvimTreeGitStaged" },
    NvimTreeFileMerge   = { default = true, link = "NvimTreeGitMerge" },
    NvimTreeFileRenamed = { default = true, link = "NvimTreeGitRenamed" },
    NvimTreeFileNew     = { default = true, link = "NvimTreeGitNew" },
    NvimTreeFileDeleted = { default = true, link = "NvimTreeGitDeleted" },
    NvimTreeFileIgnored = { default = true, link = "NvimTreeGitIgnored" },

    -- There are 2 highlight groups for the live filter feature.
    -- NvimTreeLiveFilterPrefix
    -- NvimTreeLiveFilterValue

    -- Color of the bookmark icon.
    -- NvimTreeBookmark
  }
end

return M
