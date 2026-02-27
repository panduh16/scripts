juju.create_tab()
juju.create_section("join", 1, 1, 0)
juju.create_section("", 2, 1, 0)

local joinscript = juju["create_element"]("join", {
	["name"] = "copy join script",
}, {
	["button"] = {
		["confirmation"] = false,
	},
})

local joinlink = juju["create_element"]("join", {
	["name"] = "copy join link",
}, {
	["button"] = {
		["confirmation"] = false,
	},
})

local joinbrowsercode = juju["create_element"]("join", {
	["name"] = "copy join browser code",
}, {
	["button"] = {
		["confirmation"] = false,
	},
})

juju["create_connection"](joinscript["on_clicked"], function()
	setclipboard(
		'game:GetService("TeleportService", "$$$shaqhook$$$"):TeleportToPlaceInstance('
			.. game.PlaceId
			.. ', "'
			.. game.JobId
			.. '", game:GetService("Players").LocalPlayer)'
	)
	print(
		'game:GetService("TeleportService", "$$$shaqhook$$$"):TeleportToPlaceInstance('
			.. game.PlaceId
			.. ', "'
			.. game.JobId
			.. '", game:GetService("Players").LocalPlayer)'
	)
end)

juju["create_connection"](joinlink["on_clicked"], function()
	setclipboard(
		"https://www.roblox.com/games/" .. game.PlaceId .. "?placeId=" .. game.PlaceId .. "&jobId=" .. game.JobId
	)
	print("https://www.roblox.com/games/" .. game.PlaceId .. "?placeId=" .. game.PlaceId .. "&jobId=" .. game.JobId)
end)

juju["create_connection"](joinbrowsercode["on_clicked"], function()
	setclipboard(
		"// Paste this in your browser console:\nRoblox.GameLauncher.joinGameInstance("
			.. game.PlaceId
			.. ', "'
			.. game.JobId
			.. '")'
	)
	print(
		"// Paste this in your browser console:\nRoblox.GameLauncher.joinGameInstance("
			.. game.PlaceId
			.. ', "'
			.. game.JobId
			.. '")'
	)
end)
