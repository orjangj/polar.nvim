local spec = require("polar.spec")
local palette = spec.palette
local ui = spec.ui

local polar = {}

polar.normal = {
	a = { fg = ui.text.primary, bg = ui.background.secondary },
	b = { fg = ui.text.primary, bg = ui.background.secondary },
	c = { fg = ui.text.primary, bg = ui.background.primary },
}

polar.insert = {
	a = { fg = ui.background.primary, bg = ui.element.primary },
	b = { fg = ui.text.primary, bg = ui.background.secondary },
	y = { fg = ui.text.primary, bg = ui.background.primary },
}

polar.visual = {
	a = { fg = ui.background.primary, bg = ui.element.accent },
	b = { fg = ui.text.primary, bg = ui.background.secondary },
	y = { fg = ui.text.primary, bg = ui.background.primary },
}

polar.command = {
	a = { fg = ui.background.primary, bg = palette.yellow, gui = "bold" },
	b = { fg = ui.text.primary, bg = ui.background.secondary },
	y = { fg = ui.text.primary, bg = ui.background.primary },
}

polar.replace = {
	a = { fg = ui.background.primary, bg = palette.magenta },
	b = { fg = ui.text.primary, bg = ui.background.secondary },
	y = { fg = ui.text.primary, bg = ui.background.primary },
}

polar.inactive = {
	a = { fg = ui.text.primary, bg = ui.background.secondary, gui = "bold" },
	b = { fg = ui.text.primary, bg = ui.background.secondary },
	c = { fg = ui.text.primary, bg = ui.background.primary },
}

return polar
