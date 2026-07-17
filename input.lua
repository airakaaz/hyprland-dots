hl.config({
	input = {
		kb_layout = "us,fr",
		kb_options = "grp:alts_toggle",

		follow_mouse = 1,

		sensitivity = 0,

		numlock_by_default = false,
		repeat_delay = 250,
		repeat_rate = 35,

		focus_on_close = 0,

		touchpad = {
			natural_scroll = true,
			disable_while_typing = true,
			scroll_factor = 1,
		},

		touchdevice = {
			transform = state.orientation,
		},
	},

	binds = {
		scroll_event_delay = 0,
	},
})
