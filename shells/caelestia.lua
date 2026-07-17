require("keybinds.variables")

shell = {}
shell.start = "pidof qs || caelestia shell -d"

shell.orientation = {
	main = "vertical",
	opposite = "horizontal",
	specialWs = "left",
	commWs = "right",
}
shell.roundCorners = 13
shell.gapsIn = 5
shell.gapsOut = 10

hl.bind(mainMod_ .. mainMod .. "_L", hl.dsp.global("caelestia:launcher"))

hl.bind(mainMod_ .. "V", hl.dsp.exec_cmd("pkill fuzzel || caelestia clipboard"))
hl.bind(mainMod_ .. alt_ .. "V", hl.dsp.exec_cmd("pkill fuzzel || caelestia clipboard -d"))
hl.bind(mainMod_ .. "Period", hl.dsp.exec_cmd("pkill fuzzel || caelestia emoji -p"))

hl.bind(mainMod_ .. "backspace", hl.dsp.global("caelestia:clearNotifs"), { locked = true })
hl.bind(mainMod_ .. "space", hl.dsp.global("caelestia:dashboard"))
hl.bind(mainMod_ .. alt_ .. "space", hl.dsp.global("caelestia:sidebar"))
hl.bind(mainMod_ .. alt_ .. shift_ .. "space", hl.dsp.global("caelestia:showall"))
hl.bind(mainMod_ .. "escape", hl.dsp.global("caelestia:session"))
hl.bind("XF86PowerOff", hl.dsp.global("caelestia:session"))
hl.bind(mainMod_ .. ctrl_ .. "S", hl.dsp.global("caelestia:nexus"))

hl.bind(mainMod_ .. "escape", hl.dsp.global("caelestia:lock"), { long_press = true })
hl.bind("XF86Tools", hl.dsp.exec_cmd(shell.start), { locked = true })
hl.bind("XF86Tools", hl.dsp.global("caelestia:lock"))

hl.bind(mainMod_ .. ctrl_ .. "space", hl.dsp.global("caelestia:mediaToggle"))
hl.bind(mainMod_ .. ctrl_ .. "equal", hl.dsp.global("caelestia:mediaNext"))
hl.bind(mainMod_ .. ctrl_ .. "minus", hl.dsp.global("caelestia:mediaPrev"))

shell.brightness = {}
shell.brightness.up = hl.dsp.global("caelestia:brightnessUp")
shell.brightness.down = hl.dsp.global("caelestia:brightnessDown")
