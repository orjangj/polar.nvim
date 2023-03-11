-- https://github.com/folke/lazy.nvim

local M = {}

function M.get(spec, config, opts)
  local color = spec.color

  -- stylua: ignore
  return {
		LazyButton       = { default = true, link = "CursorLine" },
    LazyButtonActive = { default = true, link = "Visual" },
    LazyComment 	   = { default = true, link = "Comment" },
    LazyCommit 	     = { default = true, link = "@variable.builtin" }, -- commit ref
    LazyCommitIssue  = { default = true, link = "Number" },
    LazyCommitScope  = { default = true, link = "Italic" },	-- conventional commit scope
    LazyCommitType 	 = { default = true, link = "Title" }, -- conventional commit type
    LazyDimmed 	     = { default = true, link = "Conceal" }, -- property
    LazyDir 	       = { default = true, link = "@text.reference" }, 	-- directory
    LazyH1 	         = { fg = color.background.normal, bg = color.foreground.normal }, -- home button
    LazyH2 	         = { fg = color.foreground.focus, style = "bold" }, -- titles
    LazyNoCond 	     = { default = true, link = "DiagnosticWarn" }, -- unloaded icon for a plugin where cond() was false
    LazyNormal 	     = { default = true, link = "NormalFloat" },
    LazyProgressDone = { default = true, link =	"Constant" }, -- progress bar done
    LazyProgressTodo = { default = true, link =	"LineNr" }, -- progress bar todo
    LazyProp 	       = { default = true, link = "Conceal" }, --property
    LazyReasonCmd 	 = { default = true, link = "Operator" },
    LazyReasonEvent  = { default = true, link = "Constant" },
    LazyReasonFt 	   = { default = true, link = "Character" },
    LazyReasonImport = { default = true, link =	"Identifier" },
    LazyReasonKeys 	 = { default = true, link = "Statement" },
    LazyReasonPlugin = { default = true, link =	"Special" },
    LazyReasonRuntime= { default = true, link = "@macro" },
    LazyReasonSource = { default = true, link =	"Character" },
    LazyReasonStart  = { default = true, link = "@field" },
    LazySpecial 	   = { default = true, link = "@punctuation.special" },
    LazyTaskError 	 = { default = true, link = "ErrorMsg" }, -- task errors
    LazyTaskOutput 	 = { default = true, link = "MsgArea" }, -- task output
    LazyUrl 	       = { default = true, link = "@text.reference" }, -- url
    LazyValue 	     = { default = true, link = "@string" },  -- value of a property
  }
end

return M
