local stateFile = "~/.config/hypr/state.lua"

function modifyState(field, value)
	return hl.dsp.exec_cmd("sed -Ei 's/^(state\\." .. field .. ") = .*/\\1 = " .. value .. "/' " .. stateFile)
end
