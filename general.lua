hl.config({
	general = {
		layout = state.layout,

		allow_tearing = false,

		gaps_workspaces = 100,
		gaps_in = shell.gapsIn,
		gaps_out = shell.gapsOut,

		resize_on_border = true,
	},

	dwindle = {
		preserve_split = true,
		smart_split = false,
		smart_resizing = false,
		special_scale_factor = 0.97,
	},

	master = {
		allow_small_split = true,
		new_status = "inherit",
		new_on_top = true,
		mfact = 0.67,
		orientation = "left",
		special_scale_factor = 0.97,
	},

	scrolling = {
		fullscreen_on_one_column = true,
		-- special_scale_factor = 0.97,
	},

	gestures = {
		workspace_swipe_distance = 220,
		workspace_swipe_cancel_ratio = 0.15,
		workspace_swipe_min_speed_to_force = 5,
		workspace_swipe_direction_lock = false,
		workspace_swipe_direction_lock_threshold = 10,
		workspace_swipe_create_new = true,
		workspace_swipe_touch = true,
	},
})
