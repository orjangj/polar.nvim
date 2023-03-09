local spec = require("polar.spec")
local color = spec.color

local polar = {}

polar.normal = {
	a = { fg = color.text.normal, bg = color.background.accent },
	b = { fg = color.text.normal, bg = color.background.accent },
	c = { fg = color.text.normal, bg = color.background.normal },
}

polar.insert = {
	a = { fg = color.background.normal, bg = color.foreground.normal },
	b = { fg = color.background.normal, bg = color.foreground.normal },
	y = { fg = color.text.normal, bg = color.background.normal },
}

polar.visual = {
	a = { fg = color.background.normal, bg = color.foreground.focus },
	b = { fg = color.background.normal, bg = color.foreground.focus },
	y = { fg = color.text.normal, bg = color.background.normal },
}

polar.command = {
	a = { fg = color.background.normal, bg = color.foreground.accent },
	b = { fg = color.background.normal, bg = color.foreground.accent },
	y = { fg = color.text.normal, bg = color.background.normal },
}

polar.replace = {
	a = { fg = color.background.normal, bg = color.foreground.elevated },
	b = { fg = color.background.normal, bg = color.foreground.elevated },
	y = { fg = color.text.normal, bg = color.background.normal },
}

polar.inactive = {
	a = { fg = color.text.normal, bg = color.background.accent, gui = "bold" },
	b = { fg = color.text.normal, bg = color.background.accent },
	c = { fg = color.text.normal, bg = color.background.normal },
}

return polar
