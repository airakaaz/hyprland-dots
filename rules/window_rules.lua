local floating = {
	{ class = "guifetch" },
	{ class = "yad" },
	{ class = "zenity" },
	{ class = "wev" },
	{ class = "org\\.gnome\\.FileRoller" },
	{ class = "file-roller" },
	{ class = "blueman-manager" },
	{ class = "com\\.github\\.GradienceTeam\\.Gradience" },
	{ class = "feh" },
	{ class = "imv" },
	{ class = "org.kde.kdeconnect.*" },
	{ class = "nwg-look" },
	{ class = "org\\.pulseaudio\\.pavucontrol|yad-icon-browser" },
	{ class = "org\\.gnome\\.Settings" },
	{ class = "system-config-printer" },
	{ class = "org\\.quickshell" },

	-- dialogs
	{ title = "(Select|Open)( a)? (File|Folder)(s)?" },
	{ title = ".*wants to save.*" },
	{ title = ".*wants to open.*" },
	{ title = "File (Operation|Upload)( Progress)?" },
	{ title = ".* Properties" },
	{ title = "Export Image as PNG" },
	{ title = "GIMP Crash Debug" },
	{ title = "Save As" },
	{ title = "Library" },
}

for _, class in ipairs(floating) do
	hl.window_rule({
		match = class,
		float = true,
		center = true,
	})
end

hl.window_rule({ match = { workspace = "f[0]" }, opaque = true })
hl.window_rule({ match = { workspace = "f[1]" }, opaque = true })

hl.window_rule({ match = { class = "btop" }, border_size = 0 })

hl.window_rule({
	name = "fetchy",
	match = { class = "fetchy" },
	float = true,
	max_size = { 480, 345 },
	min_size = { 480, 345 },
})

hl.window_rule({
	name = "PIP",
	match = { title = "Picture(-| )in(-| )[Pp]icture" },
	float = true,
	pin = true,
	keep_aspect_ratio = true,
	move = { "100%-w-2%", "100%-w-3%" },
})

hl.window_rule({
	name = "xwayland popups",
	match = { xwayland = 1, title = "win[0-9]+" },
	no_dim = true,
	no_shadow = true,
	-- rounding = 10,
})

hl.window_rule({
	name = "music",
	match = { class = "feishin|[Ss]potify|Supersonic|Cider" },
	workspace = "special:music",
})

hl.window_rule({
	name = "communication",
	match = { class = "discord|equibop|vesktop|.*whatsapp.*|.*instagram.*|.*twitter.*" },
	workspace = "special:communication",
})
