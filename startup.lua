-- local function dispatchAll(cmds)
-- 	for _, cmd in ipairs(cmds) do
-- 		hl.dispatch(cmd)
-- 	end
-- end

local function onStartup()
	-- Clipboard history
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")

	-- Auto delete trash 30 days old
	hl.exec_cmd("trash-empty 30")

	-- Cursors
	hl.exec_cmd("hyprctl setcursor " .. state.cursorTheme .. " " .. state.cursorSize)
	hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme $cursorTheme")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size $cursorSize")

	-- KDE connect indicator
	hl.exec_cmd("kdeconnect-indicator")

	-- Forward bluetooth media commands to MPRIS
	hl.exec_cmd("mpris-proxy")

	-- Load hypr plugins
	--     hl.exec_cmd('hyprpm update')
	--     hl.exec_cmd('hyprpm reload -s')

	-- start pyprland
	hl.exec_cmd("pypr")
end

local function onReload()
	hl.exec_cmd(shell.start)
	hl.exec_cmd("apply-templates " .. state.shell)
	hl.exec_cmd("killall -SIGUSR1 kitty")

	-- dispatchAll(commands)
end

hl.on("hyprland.start", onStartup)
hl.on("hyprland.start", onReload)
hl.on("config.reloaded", onReload)
