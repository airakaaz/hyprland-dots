-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

-- Default springs
hl.curve("easy", { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

wsAnim = ""
specialWsAnim = ""
if shell.orientation.main == "vertical" then
	wsAnim = "slidevert"
	specialWsAnim = "slide"
else
	wsAnim = "slide"
	specialWsAnim = "slidevert"
end

-- hl.animation({ leaf = "fade", enabled = true, speed = 2, bezier = "quick" })
-- hl.animation({ leaf = "fadeDim", enabled = true, speed = 2, bezier = "quick" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })

-- windows
hl.animation({ leaf = "windowsIn", enabled = true, speed = 2.5, bezier = "easeOutQuint", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 4, bezier = "easeOutQuint", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, bezier = "easeOutQuint" })

-- layers
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 3, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayers", enabled = true, speed = 5, bezier = "easeOutQuint" })

-- workspaces
hl.animation({ leaf = "workspaces", enabled = true, speed = 4, bezier = "easeOutQuint", style = wsAnim })
hl.animation({
	leaf = "specialWorkspaceIn",
	enabled = true,
	speed = 4.5,
	bezier = "easeOutQuint",
	style = specialWsAnim,
})
hl.animation({
	leaf = "specialWorkspaceOut",
	enabled = true,
	speed = 7.5,
	bezier = "easeOutQuint",
	style = specialWsAnim .. " -100%",
})
