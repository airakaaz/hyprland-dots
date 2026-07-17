hl.bind(mainMod_ .. "O", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod_ .. shift_ .. "O", hl.dsp.window.center())

hl.bind(mainMod_ .. "P", hl.dsp.window.pseudo())
hl.bind(mainMod_ .. ctrl_ .. "P", hl.dsp.window.pin())
-- hl.bind(mainMod_ .. shift_ .. "P", hl.dsp.window.resize({ x = 0.55, y = 0.70, relative = false }))
-- hl.bind(mainMod_ .. shift_ .. "P", hl.dsp.window.center())

hl.bind("F11", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind(mainMod_ .. "semicolon", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind(mainMod_ .. shift_ .. "semicolon", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
hl.bind("F11", hl.dsp.window.fullscreen({ mode = "fullscreen" }), { long_press = true })

hl.bind(mainMod_ .. "mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod_ .. "Z", hl.dsp.window.drag(), { mouse = true })

hl.bind(mainMod_ .. "mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(mainMod_ .. "X", hl.dsp.window.resize(), { mouse = true })

hl.bind(mainMod_ .. "W", hl.dsp.window.close())
hl.bind(mainMod_ .. "mouse:274", hl.dsp.window.kill())

hl.bind(mainMod_ .. ctrl_ .. "J", hl.dsp.window.resize({ x = 0, y = 50, relative = true }))
hl.bind(mainMod_ .. ctrl_ .. "K", hl.dsp.window.resize({ x = 0, y = -50, relative = true }))
hl.bind(mainMod_ .. ctrl_ .. "L", hl.dsp.window.resize({ x = 50, y = 0, relative = true }))
hl.bind(mainMod_ .. ctrl_ .. "H", hl.dsp.window.resize({ x = -50, y = 0, relative = true }))
