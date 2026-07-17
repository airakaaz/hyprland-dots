require("keybinds.variables")
require("keybinds.apps")
require("keybinds.navigation")
require("keybinds.window")
require("keybinds.media")
require("keybinds.screen")

hl.bind(ctrl_ .. "f3", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind(ctrl_ .. alt_ .. "XF86Tools", hl.dsp.exit(), { locked = true, long_press = true })
hl.bind(alt_ .. "f3", hl.dsp.exec_cmd("killall qs; hyprctl reload"))

hl.bind("XF86Tools", hl.dsp.exec_cmd("systemctl suspend"), { locked = true, long_press = true })

--[[
# Manage shells
bindr = Alt, f3, exec, killall qs; hyprctl reload
bind = Ctrl+Alt+Shift, C, exec, switch-shell caelestia
bind = Ctrl+Alt+Shift, A, exec, switch-shell ambxst
bind = Ctrl+Alt+Shift, N, exec, switch-shell noctalia

# Manage layouts
# bind = Ctrl+Alt, M, exec, switch-layout monocle
# bind = Ctrl+Alt, semicolon, exec, switch-layout hy3
bind = Ctrl+Alt, comma, exec, switch-layout dwindle
bind = Ctrl+Alt, period, exec, switch-layout master
bind = Ctrl+Alt, slash, exec, switch-layout scrolling
]]
