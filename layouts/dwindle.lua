hl.bind(mainMod_ .. "I", hl.dsp.layout("togglesplit")) -- dwindle only

for key, direction in pairs(ldur) do
	hl.bind(shift_ .. alt_ .. key, hl.dsp.layout("preselect " .. direction))
end
