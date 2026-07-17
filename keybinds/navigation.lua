-- window actions
for key, dir in pairs(ldur) do
	hl.bind(mainMod_ .. key, hl.dsp.focus({ direction = dir }), { repeating = true })
	hl.bind(mainMod_ .. shift_ .. key, hl.dsp.window.swap({ direction = dir }), { repeating = true })
	hl.bind(mainMod_ .. alt_ .. key, hl.dsp.window.move({ direction = dir }), { repeating = true })
	hl.gesture({
		fingers = 3,
		direction = dir,
		action = function()
			hl.dispatch(hl.dsp.focus({ direction = dir }))
		end,
	})
end

-- workspace actions
local dir = {}
if shell.orientation.main == "horizontal" then
	dir.l1 = "bracketleft"
	dir.r1 = "bracketright"
	dir.l2 = "apostrophe"
	dir.r2 = "backslash"
else
	dir.l1 = "bracketleft"
	dir.r1 = "apostrophe"
	dir.l2 = "bracketright"
	dir.r2 = "backslash"
end

-- go to ws
hl.bind(mainMod_ .. dir.l1, hl.dsp.focus({ workspace = "e-1" }), { repeating = true })
hl.bind(mainMod_ .. dir.r1, hl.dsp.focus({ workspace = "e+1" }), { repeating = true })
hl.bind(mainMod_ .. dir.l2, hl.dsp.focus({ workspace = "-1" }), { repeating = true })
hl.bind(mainMod_ .. dir.r2, hl.dsp.focus({ workspace = "+1" }), { repeating = true })

-- go to ws group
hl.bind(mainMod_ .. ctrl_ .. dir.r1, hl.dsp.focus({ workspace = "+10" }), { repeating = true })
hl.bind(mainMod_ .. ctrl_ .. dir.l1, hl.dsp.focus({ workspace = "-10" }), { repeating = true })

-- move to ws
hl.bind(alt_ .. dir.r1, hl.dsp.window.move({ workspace = "e+1" }), { repeating = true })
hl.bind(alt_ .. dir.l1, hl.dsp.window.move({ workspace = "e-1" }), { repeating = true })
hl.bind(alt_ .. dir.r2, hl.dsp.window.move({ workspace = "+1" }), { repeating = true })
hl.bind(alt_ .. dir.l2, hl.dsp.window.move({ workspace = "-1" }), { repeating = true })

local function goToWs(i)
	return function()
		local grp = hl.get_active_workspace().id // 10
		hl.dispatch(hl.dsp.focus({ workspace = grp * 10 + i }))
	end
end

local function goToWsGrp(i)
	return function()
		local pos = hl.get_active_workspace().id % 10
		hl.dispatch(hl.dsp.focus({ workspace = (i - 1) * 10 + pos }))
	end
end

local function moveToWs(i)
	return function()
		local grp = hl.get_active_workspace().id // 10
		hl.dispatch(hl.dsp.window.move({ workspace = grp * 10 + i }))
	end
end

local function moveToWsGrp(i)
	return function()
		local pos = hl.get_active_workspace().id % 10
		hl.dispatch(hl.dsp.window.move({ workspace = (i - 1) * 10 + pos }))
	end
end

for i = 1, 10 do
	local key = i % 10

	hl.bind(mainMod_ .. key, goToWs(i))
	hl.bind(alt_ .. key, moveToWs(i))
	hl.bind(mainMod_ .. ctrl_ .. key, goToWsGrp(i))
	hl.bind(ctrl_ .. alt_ .. key, moveToWsGrp(i))
end

-- special workspaces
local specialWs = { "special", "music", "communication" }
for _, ws in ipairs(specialWs) do
	-- go to special ws
	hl.bind(mainMod_ .. string.sub(ws, 1, 1), hl.dsp.workspace.toggle_special(ws))

	-- go to special ws
	hl.bind(alt_ .. string.sub(ws, 1, 1), hl.dsp.window.move({ workspace = ws }))
end

hl.bind(alt_ .. "grave", hl.dsp.window.move({ workspace = "e+0" }))

local mouse = { mouse_up = "+", mouse_down = "-" }
for mouse_dir, inc in pairs(mouse) do
	-- go to ws
	hl.bind(mainMod_ .. mouse_dir, hl.dsp.focus({ workspace = "e" .. inc .. "1" }))
	hl.bind(mainMod_ .. shift_ .. mouse_dir, hl.dsp.focus({ workspace = inc .. "1" }))

	-- go to ws group
	hl.bind(mainMod_ .. ctrl_ .. mouse_dir, hl.dsp.focus({ workspace = inc .. "10" }))

	-- move to ws
	hl.bind(alt_ .. mouse_dir, hl.dsp.window.move({ workspace = inc .. "1" }))
	hl.bind(alt_ .. shift_ .. mouse_dir, hl.dsp.window.move({ workspace = "e" .. inc .. "1" }))
end

hl.gesture({
	fingers = 4,
	direction = shell.orientation.main,
	action = "workspace",
})

hl.gesture({
	fingers = 4,
	direction = shell.orientation.specialWs,
	action = function()
		hl.dispatch(hl.dsp.workspace.toggle_special("special"))
	end,
})

hl.gesture({
	fingers = 4,
	direction = shell.orientation.commWs,
	action = function()
		hl.dispatch(hl.dsp.workspace.toggle_special("communication"))
	end,
})

hl.bind(mainMod_ .. "G", hl.dsp.group.toggle())
hl.bind(mainMod_ .. alt_ .. "G", hl.dsp.window.move({ out_of_group = true }))
hl.bind(mainMod_ .. shift_ .. "G", hl.dsp.group.lock_active())

hl.bind(alt_ .. "TAB", hl.dsp.window.cycle_next(), { repeating = true })
hl.bind(alt_ .. shift_ .. "TAB", hl.dsp.window.cycle_next({ next = false }), { repeating = true })

hl.bind(ctrl_ .. alt_ .. "TAB", hl.dsp.group.next(), { repeating = true })
hl.bind(ctrl_ .. alt_ .. shift_ .. "TAB", hl.dsp.group.prev(), { repeating = true })
