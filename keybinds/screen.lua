if shell.brightness ~= nil then
	hl.bind("XF86MonBrightnessUp", shell.brightness.up, { locked = true, repeating = true })
	hl.bind("XF86MonBrightnessDown", shell.brightness.down, { locked = true, repeating = true })
else
	hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 5%+"), { locked = true, repeating = true })
	hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), { locked = true, repeating = true })
end

hl.bind(mainMod_ .. shift_ .. "S", hl.dsp.exec_cmd("quickshell -c hyprquickshot -n"))

hl.bind(ctrl_ .. alt_ .. "R", modifyState("orientation", (state.orientation + 1) % 4), { locked = true })
