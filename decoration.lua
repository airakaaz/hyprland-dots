require("colors")

-- local function rgba(clr, --[[optional]]opc)
local function rgba(clr, opc)
	if opc ~= nil then
		return "rgba(" .. clr .. opc .. ")"
	else
		return "rgb(" .. clr .. ")"
	end
end

style = {}
style.activeBorder =
	{ colors = { rgba(colors.primary, "e6"), rgba(colors.primary, "e6"), rgba(colors.secondary, "e6") }, angle = 45 }
style.inactiveBorder = rgba(colors.onSurfaceVariant, "d4")

hl.config({
	general = {
		border_size = 3,
		col = {
			active_border = style.activeBorder,
			inactive_border = style.inactiveBorder,
		},
	},

	decoration = {
		rounding = shell.roundCorners,
		-- rounding_power = 2,

		-- Change transparency of focused and unfocused windows
		-- active_opacity = 1.0,
		-- inactive_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 20,
			render_power = 3,
			-- color = 0xee1a1a1a,
		},

		blur = {
			enabled = true,
			xray = false,
			new_optimizations = true,
			input_methods = true,
			size = 8,
			passes = 4,
			contrast = 1,
			special = true,
			-- vibrancy = 0.1696,
		},
	},

	group = {
		col = {
			border_active = style.activeBorder,
			border_inactive = style.inactiveBorder,
		},

		drag_into_group = 2,

		groupbar = {
			font_family = "Lilex Nerd Font",
			font_size = 15,
			gradients = true,
			height = 25,
			indicator_height = 0,
			gaps_in = 3,
			gaps_out = 3,
			text_color = rgba(colors.onPrimary),
			col = {
				active = rgba(colors.primary, "d4"),
				inactive = rgba(colors.outline, "d4"),
			},
		},
	},

	animations = {
		enabled = true,
	},
})
