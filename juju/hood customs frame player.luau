local Players = cloneref(game:GetService("Players"))
local RunService = cloneref(game:GetService("RunService"))
local Workspace = cloneref(game:GetService("Workspace"))
local juju
local framed = Players:GetPlayers()[1]
local toAim = Players:GetPlayers()[1]

juju.create_tab()
juju.create_section("frame player", 1, 1, 0)
juju.create_section("", 2, 1, 0)

juju["create_element"]("frame player", {
	["name"] = "enabled",
}, {
	["toggle"] = {
		["default"] = false,
		["flag"] = "frame_enabled",
	},
})

juju["create_element"]("frame player", {
	["name"] = "lerp",
}, {
	["slider"] = {
		["min_text"] = "min",
		["max_text"] = "max",
		["decimals"] = 2,
		["default"] = 5,
		["prefix"] = "",
		["suffix"] = " ",
		["flag"] = "frame_lerp",
		["min"] = 0.1,
		["max"] = 10,
	},
})

local playertoframe = juju["create_element"]("frame player", {
	["name"] = "player to frame",
}, {
	["textbox"] = {
		["default"] = framed.Name,
		["flag"] = "player_to_frame",
	},
})

local whoshouldtheyaimon = juju["create_element"]("frame player", {
	["name"] = "who should they aim on",
}, {
	["textbox"] = {
		["default"] = toAim.Name,
		["flag"] = "aim_on",
	},
})

juju.create_connection(playertoframe["on_textbox_change"], function(val)
	local input = string.lower(val)
	local closestMatch = nil

	for _, player in pairs(Players:GetPlayers()) do
		local name = string.lower(player.Name)
		if string.sub(name, 1, #input) == input then
			closestMatch = player
		end
	end

	if closestMatch then
		framed = closestMatch
	end
end)

juju.create_connection(whoshouldtheyaimon["on_textbox_change"], function(val)
	local input = string.lower(val)
	local closestMatch = nil

	for _, player in pairs(Players:GetPlayers()) do
		local name = string.lower(player.Name)
		if string.sub(name, 1, #input) == input then
			closestMatch = player
		end
	end

	if closestMatch then
		toAim = closestMatch
	end
end)

RunService.Heartbeat:Connect(function(dt)
	local currentEndPosition

	if not juju.get_flag("frame_enabled") then
		currentEndPosition = nil
		return
	end

	local aimviewer = Workspace:FindFirstChild("Ignored") and Workspace.Ignored:FindFirstChild("AIM_VIEWER_TRACER")
	local lerpSpeed = juju.get_flag("frame_lerp")
	if not aimviewer then
		return
	end
	if not framed or not toAim then
		return
	end

	local framedChar = framed.Character
	local toAimChar = toAim.Character
	if not framedChar or not toAimChar then
		return
	end

	local tool = framedChar:FindFirstChildOfClass("Tool")
	if not tool then
		return
	end

	local handle = tool:FindFirstChild("Handle")
	if not handle then
		return
	end

	local aimPart = toAimChar:FindFirstChild("HumanoidRootPart")
	if not aimPart then
		return
	end

	local origin = handle.Position
	local target = aimPart.Position
	local distance = (target - origin).Magnitude

	local alpha
	if distance > 30 then
		alpha = 1
	else
		alpha = math.clamp((lerpSpeed * dt * math.random()), 0.15, 0.5)
	end

	if not currentEndPosition then
		currentEndPosition = target
	else
		currentEndPosition = currentEndPosition:Lerp(target, alpha)
	end

	local aimDistance = (currentEndPosition - origin).Magnitude

	local newCFrame = CFrame.new(origin, currentEndPosition) * CFrame.new(0, 0, -aimDistance / 2)
	local newSize = Vector3.new(0.05, 0.05, aimDistance)

	aimviewer.CFrame = newCFrame
	aimviewer.Size = newSize
	aimviewer.Transparency = 0
end)

juju.on_unload(function() end)
