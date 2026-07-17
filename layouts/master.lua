require("keybinds.variables")

local ldur = {
	H = "left",
	J = "bottom",
	K = "top",
	L = "right",
}
for key, dir in pairs(ldur) do
	hl.bind(shift_ .. alt_ .. key, hl.dsp.layout("orientation" .. dir))
end

hl.bind(mainMod_ .. "minus", hl.dsp.layout("mfact -0.05"))
hl.bind(mainMod_ .. "equal", hl.dsp.layout("mfact +0.05"))

hl.bind(mainMod_ .. "Q", hl.dsp.layout("rollnext"))
hl.bind(mainMod_ .. shift_ .. "Q", hl.dsp.layout("rollprev"))
hl.bind(mainMod_ .. alt_ .. "Q", hl.dsp.layout("addmaster"))
hl.bind(mainMod_ .. ctrl_ .. "Q", hl.dsp.layout("removemaster"))

-- hl.bind(mainMod_ .. ctrl_ .. "L", hl.dsp.window.resize()))
