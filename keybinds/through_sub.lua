local throught_keys = mainMod_ .. alt_ .. "F"

hl.bind(throught_keys, hl.dsp.submap("through"))

hl.define_submap("through", function()
	hl.bind(throught_keys, hl.dsp.submap("reset"))
	hl.bind("f11", hl.dsp.window.fullscreen({ action = "unset" }))
	hl.bind("f11", hl.dsp.submap("reset"))
end)

-- function qemu(w)
--     if w.fullscreen_state == 1 and w.class then
--         hl.dsp.submap("through")
--     end
-- end
--
-- hl.on("window.fullscreen", )
