hl.workspace_rule({
	workspace = "w[tv1]f[-1]",
	gaps_out = shell.gapsOut * 3.5,
})

hl.workspace_rule({
	workspace = "f[1]",
	border_size = 0,
})

hl.workspace_rule({
	workspace = "special:exposed",
	layout = "scrolling",
})
