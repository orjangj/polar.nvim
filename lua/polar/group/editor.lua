local M = {}

-- TODO: go through all settings.. any missing? any that shouldn't be here?
function M.get(spec, opt)
  local color = spec.color

  -- stylua: ignore
  return {
    ColorColumn  = { bg = color.background.accent }, -- Used for the columns set with 'colorcolumn'
    Conceal      = { fg = color.conceal }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    CurSearch    = { fg = color.search, sp = color.search, style = "underline,italic,bold" }, -- Used for highlighting a search pattern under the cursor (se 'hlsearch')
    Cursor       = { fg = color.background.normal, bg = color.cursor }, -- character under the cursor
    lCursor      = { link = "Cursor" }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     = { link = "Cursor" }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { link = "CursorLine" }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   = { bg = color.cursorline }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    -- CursorLineFold = {},
    CursorLineNr = { fg = color.cursor, style = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineSign = {},
    Directory    = { fg = color.directory.accent }, -- directory names (and other special names in listings)
    DiffAdd      = { bg = color.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange   = { bg = color.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete   = { bg = color.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText     = { bg = color.diff.text, style = "bold" }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  = { fg = color.background.normal }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg     = { fg = color.red }, -- error messages on the command line
    Folded       = { fg = color.comments }, -- line used for closed folds
    FoldColumn   = { link = "Folded" }, -- 'foldcolumn'
    IncSearch    = { link = "CurSearch" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    LineNr       = { fg = color.comments }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove  = {},
    -- LineNrBelow  = {},
    MatchParen   = { fg = color.foreground.normal, style = "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      = { fg = color.foreground.normal, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- NOTE: This was commented out as there is an issue with setting this highlight group (see issue #98)
    -- MsgArea         = {}, -- Area for messages and cmdline
    -- MsgSeparator    = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      = { fg = color.orange, style = "bold" }, -- |more-prompt|
    NonText      = { fg = color.background.accent }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       = { fg = color.text.normal, bg = opt.transparent and color.none or color.background.normal }, -- normal text
    NormalFloat  = { fg = color.text.normal, bg = color.background.normal }, -- Normal text in floating windows.
    NormalNC     = { fg = color.text.normal, bg = opt.transparent and color.none or color.background.normal }, -- normal text in non-current windows
    FloatBorder  = { fg = color.border.normal },
    Pmenu        = { fg = color.text.normal, bg = color.background.accent }, -- Popup menu: normal item.
    PmenuSel     = { bg = color.background.focus }, -- Popup menu: selected item.
    PmenuSbar    = { link = "Pmenu" }, -- Popup menu: scrollbar.
    PmenuThumb   = { bg = color.border.focus }, -- Popup menu: Thumb of the scrollbar.
    Question     = { link = "MoreMsg" }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { link = "CursorLine" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       = { fg = color.yellow, style = "italic,bold" }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SignColumn   = { fg = color.comments }, -- column where |signs| are displayed
    SignColumnSB = { link = "SignColumn" }, -- column where |signs| are displayed
    SpecialKey   = { fg = color.special }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     = { sp = color.diagnostic.error, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     = { sp = color.diagnostic.warning, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   = { sp = color.diagnostic.info, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    = { sp = color.diagnostic.hint, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   = { bg = color.background.accent }, -- status line of current window
    StatusLineNC = { fg = color.none }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    Substitute   = { fg = color.background.normal, bg = color.red }, -- |:substitute| replacement text highlighting
    TabLine      = { fg = color.text.normal, bg = color.background.accent }, -- tab pages line, not active tab page label
    TabLineFill  = { bg = color.background.accent }, -- tab pages line, where there are no labels
    TabLineSel   = { fg = color.foreground.normal, bg = color.background.accent }, -- tab pages line, active tab page label
    TermCursor   = { bg = color.blue}, -- cursor in a focused terminal
    --TermCursorNC = {}, -- cursor in an unfocused terminal
    Title        = { fg = color.foreground.normal }, -- titles for output from ":set all", ":autocmd" etc.
    VertSplit    = { fg = color.background.accent }, -- the column separating vertically split windows
    Visual       = { link = "CursorLine" }, -- Visual mode selection
    VisualNOS    = { link = "visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   = { fg = color.yellow }, -- warning messages
    Whitespace   = { fg = color.conceal }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     = { link = "Pmenu" }, -- current match in 'wildmenu' completion
    WinBar       = { fg = color.conceal, bg = opt.transparent and color.none or color.background.normal, style = "bold" }, -- Window bar of current window.
    WinBarNC     = { fg = color.conceal, bg = opt.transparent and color.none or color.background.normal, style = "bold" }, --Window bar of not-current windows.
    WinSeparator = { fg = color.border.normal, style = "bold" }, -- The column separating vertically split windows
    -- qfLineNr        = {},
    -- qfFileName      = {},
    -- debugPC         = {}, -- used for highlighting the current line in terminal-debug
    -- debugBreakpoint = {}, -- used for breakpoint colors in terminal-debug
  }
end

return M
