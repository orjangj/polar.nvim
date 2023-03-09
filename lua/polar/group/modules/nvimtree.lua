-- https://github.com/nvim-tree/nvim-tree.lua

local M = {}

function M.get(spec, config, opts)
  local color = spec.color

  -- stylua: ignore
  return {
    -- Keys with values matching pattern { default = true, link = ... }
    -- are the defaults set by NvimTree. They're only included here for
    -- completeness and easy access if they need to be changed.
    NvimTreeSymlink          = { fg = color.magenta, style = "bold" },
    NvimTreeFolderName       = { default = true, link = "Directory" },
    NvimTreeRootFolder       = { fg = color.foreground.normal, style = "bold" },
    NvimTreeFolderIcon       = { fg = color.foreground.accent },
    NvimTreeFileIcon         = { fg = color.foreground.normal },
    NvimTreeEmptyFolderName  = { fg = color.background.accent }, -- { default = true, link = "Directory" }
    NvimTreeOpenedFolderName = { fg = color.foreground.accent }, -- { default = true, link = "Directory" }
    NvimTreeExecFile         = { fg = color.green, style = "bold" },
    NvimTreeOpenedFile       = { fg = color.foreground.accent, style = "bold" }, -- TODO: doesn't seem to have any effect
    NvimTreeSpecialFile      = { fg = color.text.normal, style = "underline" }, -- TODO
    NvimTreeImageFile        = { fg = color.text.normal, style = "bold" }, -- TODO
    NvimTreeIndentMarker     = { fg = color.background.accent },
    NvimTreeLspDiagnosticsError       = { default = true, link = "DiagnosticError" },
    NvimTreeLspDiagnosticsWarning     = { default = true, link = "DiagnosticWarn" },
    NvimTreeLspDiagnosticsInformation = { default = true, link = "DiagnosticInfo" },
    NvimTreeLspDiagnosticsHint        = { default = true, link = "DiagnosticHint" },
    NvimTreeGitDirty   = { fg = color.yellow },
    NvimTreeGitStaged  = { fg = color.green },
    NvimTreeGitMerge   = { fg = color.magenta },
    NvimTreeGitRenamed = { link = "NvimTreeGitDeleted" },
    NvimTreeGitNew     = { link = "NvimTreeGitDeleted" },
    NvimTreeGitDeleted = { fg = color.red },
    NvimTreeGitIgnored = { default = true, link = "Comment" },
    NvimTreeNormal       = { fg = color.text.normal, bg = config.transparent and color.none or color.background.accent },
    NvimTreeEndOfBuffer  = { fg = config.transparent and color.none or color.background.accent }, -- { default = true, link = "NonText" },
    NvimTreeCursorLine   = { default = true, link = "CursorLine" },
    NvimTreeCursorLineNr = { default = true, link = "CursorLineNr" },
    NvimTreeLineNr       = { default = true, link = "LineNr" },
    NvimTreeWinSeparator = {
      -- NOTE: Match bg of NvimTreeNormal
      fg = config.transparent and color.none or color.background.accent,
      bg = config.transparent and color.none or color.background.accent
    },
    NvimTreeVertSplit    = { link = "NvimTreeWinSeparator" },  -- deprecated?
    NvimTreeCursorColumn = { default = true, link = "CursorColumn" },
    NvimTreeFileDirty   = { default = true, link = "NvimTreeGitDirty" },
    NvimTreeFileStaged  = { default = true, link = "NvimTreeGitStaged" },
    NvimTreeFileMerge   = { default = true, link = "NvimTreeGitMerge" },
    NvimTreeFileRenamed = { default = true, link = "NvimTreeGitRenamed" },
    NvimTreeFileNew     = { default = true, link = "NvimTreeGitNew" },
    NvimTreeFileDeleted = { default = true, link = "NvimTreeGitDeleted" },
    NvimTreeFileIgnored = { default = true, link = "NvimTreeGitIgnored" },
    -- TODO
    -- NvimTreeWindowPicker
    -- NvimTreeLiveFilterPrefix
    -- NvimTreeLiveFilterValue
    -- NvimTreeBookmark
  }
end

return M
