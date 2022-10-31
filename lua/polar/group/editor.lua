local M = {}

-- TODO: go through
function M.get(spec, config)
  local palette = spec.palette
  local ui = spec.ui
  local transparent = config.transparent

  -- stylua: ignore
  return {
    ColorColumn  = { bg = ui.background.secondary }, -- used for the columns set with 'colorcolumn'
    Conceal      = { fg = ui.background.elevated }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       = { fg = ui.background.elevated, bg = ui.element.secondary }, -- character under the cursor
    lCursor      = { link = "Cursor" }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     = { link = "Cursor" }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { link = "CursorLine" }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   = { bg = ui.background.secondary }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    = { fg = ui.element.secondary }, -- directory names (and other special names in listings)
    DiffAdd      = { bg = palette.green }, -- diff mode: Added line |diff.txt|
    DiffChange   = { bg = palette.yellow }, -- diff mode: Changed line |diff.txt|
    DiffDelete   = { bg = palette.red }, -- diff mode: Deleted line |diff.txt|
    DiffText     = { bg = palette.yellow }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  = { fg = ui.background.primary }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor      = {}, -- cursor in a focused terminal
    -- TermCursorNC    = {}, -- cursor in an unfocused terminal
    ErrorMsg     = { fg = palette.red }, -- error messages on the command line
    VertSplit    = { fg = ui.background.secondary }, -- the column separating vertically split windows
    Folded       = { fg = palette.comment }, -- line used for closed folds
    FoldColumn   = { fg = ui.background.elevated }, -- 'foldcolumn'
    SignColumn   = { fg = ui.background.elevated }, -- column where |signs| are displayed
    SignColumnSB = { link = "SignColumn" }, -- column where |signs| are displayed
    Substitute   = { fg = ui.background.secondary, bg = palette.red }, -- |:substitute| replacement text highlighting
    LineNr       = { fg = palette.comment }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = ui.element.primary, style = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   = { fg = ui.element.primary, style = "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      = { fg = ui.element.primary, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- NOTE: This was commented out as there is an issue with seting this highlight group see issue #98
    -- MsgArea         = { fg = spec.fg2 }, -- Area for messages and cmdline
    -- MsgSeparator    = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      = { fg = palette.orange, style = "bold" }, -- |more-prompt|
    NonText      = { fg = ui.background.elevated }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       = { fg = ui.text.primary, bg = transparent and "NONE" or ui.background.primary }, -- normal text
    NormalNC     = { fg = ui.text.primary, bg = transparent and "NONE" or ui.background.primary }, -- normal text in non-current windows
    NormalFloat  = { fg = ui.text.primary, bg = ui.background.primary }, -- Normal text in floating windows.
    FloatBorder  = { fg = ui.background.elevated }, -- TODO
    Pmenu        = { fg = ui.text.primary, bg = ui.background.secondary }, -- Popup menu: normal item.
    PmenuSel     = { bg = ui.background.accent }, -- Popup menu: selected item.
    PmenuSbar    = { link = "Pmenu" }, -- Popup menu: scrollbar.
    PmenuThumb   = { bg = ui.element.accent }, -- Popup menu: Thumb of the scrollbar.
    Question     = { link = "MoreMsg" }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { link = "CursorLine" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       = { fg = ui.text.primary, bg = ui.element.elevated }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch    = { fg = ui.text.primary, bg = ui.element.secondary }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch    = { link = "IncSearch" }, -- Search result under cursor (available since neovim >0.7.0 (https://github.com/neovim/neovim/commit/b16afe4d556af7c3e86b311cfffd1c68a5eed71f)).
    SpecialKey   = { link = "NonText" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     = { sp = palette.red, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     = { sp = palette.yellow, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   = { sp = palette.orange, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    = { sp = palette.orange, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   = { fg = ui.background.elevated, bg = ui.background.secondary }, -- status line of current window
    StatusLineNC = { fg = ui.background.elevated, bg = ui.background.primary }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      = { fg = ui.text.primary, bg = ui.background.secondary }, -- tab pages line, not active tab page label
    TabLineFill  = { bg = ui.background.secondary }, -- tab pages line, where there are no labels
    TabLineSel   = { fg = ui.element.primary, bg = ui.background.secondary }, -- tab pages line, active tab page label
    Title        = { fg = ui.element.primary }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       = { link = "CursorLine" }, -- Visual mode selection
    VisualNOS    = { link = "visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   = { fg = palette.yellow }, -- warning messages
    Whitespace   = { fg = ui.background.accent }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     = { link = "Pmenu" }, -- current match in 'wildmenu' completion
    WinBar       = { fg = ui.background.elevated, bg = transparent and "NONE" or ui.background.primary, style = "bold" }, -- Window bar of current window.
    WinBarNC     = { fg = ui.background.elevated, bg = transparent and "NONE" or ui.background.primary, style = "bold" }, --Window bar of not-current windows.

    -- qfLineNr        = {},
    -- qfFileName      = {},

    -- debugPC         = {}, -- used for highlighting the current line in terminal-debug
    -- debugBreakpoint = {}, -- used for breakpoint colors in terminal-debug
  }
end

return M
