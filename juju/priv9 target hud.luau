-- Gui to Lua
-- Version: 3.6

-- Instances:

local priv9targethud = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIStroke = Instance.new("UIStroke")
local UIGradient = Instance.new("UIGradient")
local UIGradient_2 = Instance.new("UIGradient")
local TextLabel = Instance.new("TextLabel")
local UIStroke_2 = Instance.new("UIStroke")
local Frame_2 = Instance.new("Frame")
local UIStroke_3 = Instance.new("UIStroke")
local UIGradient_3 = Instance.new("UIGradient")
local Frame_3 = Instance.new("Frame")
local UIGradient_4 = Instance.new("UIGradient")
local UIStroke_4 = Instance.new("UIStroke")
local UIGradient_5 = Instance.new("UIGradient")
local UIListLayout = Instance.new("UIListLayout")
local nameframe = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local TextLabel_2 = Instance.new("TextLabel")
local UIStroke_5 = Instance.new("UIStroke")
local name = Instance.new("TextLabel")
local UIStroke_6 = Instance.new("UIStroke")
local UIPadding = Instance.new("UIPadding")
local healthframe = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local TextLabel_3 = Instance.new("TextLabel")
local UIStroke_7 = Instance.new("UIStroke")
local health = Instance.new("TextLabel")
local UIStroke_8 = Instance.new("UIStroke")
local UIPadding_2 = Instance.new("UIPadding")
local armorframe = Instance.new("Frame")
local UIListLayout_4 = Instance.new("UIListLayout")
local TextLabel_4 = Instance.new("TextLabel")
local UIStroke_9 = Instance.new("UIStroke")
local armor = Instance.new("TextLabel")
local UIStroke_10 = Instance.new("UIStroke")
local UIPadding_3 = Instance.new("UIPadding")
local UIGradient_6 = Instance.new("UIGradient")

-- Properties:

priv9targethud.Parent = gethui()
priv9targethud.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = priv9targethud
Frame.Draggable = true
Frame.AnchorPoint = Vector2.new(0.5, 0.899999976)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.754522562, 0)
Frame.Size = UDim2.new(0, 311, 0, 27)

UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke.Thickness = 1.2999999523162842
UIStroke.Parent = Frame

UIGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(45, 109, 138)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(49, 153, 127)),
})
UIGradient.Parent = UIStroke

UIGradient_2.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(31, 73, 95)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(30, 94, 78)),
})
UIGradient_2.Parent = Frame

TextLabel.Parent = Frame
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.Size = UDim2.new(1, 0, 0.699999988, 0)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "priv9.net"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 21.000
TextLabel.TextWrapped = true

UIStroke_2.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke_2.Parent = TextLabel

Frame_2.Parent = Frame
Frame_2.Draggable = true
Frame_2.AnchorPoint = Vector2.new(0.5, 1)
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.5, 0, 3.81723356, 0)
Frame_2.Size = UDim2.new(0, 311, 0, 77)

UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
UIStroke_3.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke_3.Thickness = 1.2999999523162842
UIStroke_3.Parent = Frame_2

UIGradient_3.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(45, 109, 138)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(49, 153, 127)),
})
UIGradient_3.Rotation = 33
UIGradient_3.Parent = UIStroke_3

Frame_3.Parent = Frame_2
Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame_3.Size = UDim2.new(0.980000019, 0, 0.850000024, 0)

UIGradient_4.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25, 62, 79)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 88, 73)),
})
UIGradient_4.Parent = Frame_3

UIStroke_4.Color = Color3.fromRGB(255, 255, 255)
UIStroke_4.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke_4.Thickness = 1.2999999523162842
UIStroke_4.Parent = Frame_3

UIGradient_5.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(36, 86, 108)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(39, 120, 100)),
})
UIGradient_5.Parent = UIStroke_4

UIListLayout.Parent = Frame_3
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

nameframe.Name = "nameframe"
nameframe.Parent = Frame_3
nameframe.AnchorPoint = Vector2.new(0.5, 0.5)
nameframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
nameframe.BackgroundTransparency = 1.000
nameframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
nameframe.BorderSizePixel = 0
nameframe.Position = UDim2.new(0.50000006, 0, 0.165000007, 0)
nameframe.Size = UDim2.new(1.00000012, 0, 0.330000013, 0)

UIListLayout_2.Parent = nameframe
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

TextLabel_2.Parent = nameframe
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0.5, 0, 0.699999988, 0)
TextLabel_2.Font = Enum.Font.Unknown
TextLabel_2.Text = "name:"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

UIStroke_5.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke_5.Parent = TextLabel_2

name.Name = "name"
name.Parent = nameframe
name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
name.BackgroundTransparency = 1.000
name.BorderColor3 = Color3.fromRGB(0, 0, 0)
name.BorderSizePixel = 0
name.Size = UDim2.new(0.5, 0, 0.699999988, 0)
name.Font = Enum.Font.Unknown
name.Text = "display (@name)"
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.TextScaled = true
name.TextSize = 14.000
name.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
name.TextWrapped = true
name.TextXAlignment = Enum.TextXAlignment.Right

UIStroke_6.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke_6.Parent = name

UIPadding.Parent = nameframe
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingRight = UDim.new(0, 5)

healthframe.Name = "healthframe"
healthframe.Parent = Frame_3
healthframe.AnchorPoint = Vector2.new(0.5, 0.5)
healthframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
healthframe.BackgroundTransparency = 1.000
healthframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
healthframe.BorderSizePixel = 0
healthframe.Position = UDim2.new(0.50000006, 0, 0.165000007, 0)
healthframe.Size = UDim2.new(1.00000012, 0, 0.330000013, 0)

UIListLayout_3.Parent = healthframe
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

TextLabel_3.Parent = healthframe
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Size = UDim2.new(0.5, 0, 0.699999988, 0)
TextLabel_3.Font = Enum.Font.Unknown
TextLabel_3.Text = "health:"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextWrapped = true
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

UIStroke_7.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke_7.Parent = TextLabel_3

health.Name = "health"
health.Parent = healthframe
health.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
health.BackgroundTransparency = 1.000
health.BorderColor3 = Color3.fromRGB(0, 0, 0)
health.BorderSizePixel = 0
health.Size = UDim2.new(0.5, 0, 0.699999988, 0)
health.Font = Enum.Font.Unknown
health.Text = "100/100"
health.TextColor3 = Color3.fromRGB(255, 255, 255)
health.TextScaled = true
health.TextSize = 14.000
health.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
health.TextWrapped = true
health.TextXAlignment = Enum.TextXAlignment.Right

UIStroke_8.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke_8.Parent = health

UIPadding_2.Parent = healthframe
UIPadding_2.PaddingLeft = UDim.new(0, 5)
UIPadding_2.PaddingRight = UDim.new(0, 5)

armorframe.Name = "armorframe"
armorframe.Parent = Frame_3
armorframe.AnchorPoint = Vector2.new(0.5, 0.5)
armorframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
armorframe.BackgroundTransparency = 1.000
armorframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
armorframe.BorderSizePixel = 0
armorframe.Position = UDim2.new(0.50000006, 0, 0.165000007, 0)
armorframe.Size = UDim2.new(1.00000012, 0, 0.330000013, 0)

UIListLayout_4.Parent = armorframe
UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

TextLabel_4.Parent = armorframe
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Size = UDim2.new(0.5, 0, 0.699999988, 0)
TextLabel_4.Font = Enum.Font.Unknown
TextLabel_4.Text = "armor:"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

UIStroke_9.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke_9.Parent = TextLabel_4

armor.Name = "armor"
armor.Parent = armorframe
armor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
armor.BackgroundTransparency = 1.000
armor.BorderColor3 = Color3.fromRGB(0, 0, 0)
armor.BorderSizePixel = 0
armor.Size = UDim2.new(0.5, 0, 0.699999988, 0)
armor.Font = Enum.Font.Unknown
armor.Text = "130/130"
armor.TextColor3 = Color3.fromRGB(255, 255, 255)
armor.TextScaled = true
armor.TextSize = 14.000
armor.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
armor.TextWrapped = true
armor.TextXAlignment = Enum.TextXAlignment.Right

UIStroke_10.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke_10.Parent = armor

UIPadding_3.Parent = armorframe
UIPadding_3.PaddingLeft = UDim.new(0, 5)
UIPadding_3.PaddingRight = UDim.new(0, 5)

UIGradient_6.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(33, 78, 100)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(30, 94, 78)),
})
UIGradient_6.Parent = Frame_2

local juju = juju -- i hate type errors in vscode sorry
local create_connection = juju.create_connection
local run_service = cloneref(game:GetService("RunService"))
local tween_service = game:GetService("TweenService")
local get_target = juju.get_ragebot_target

local dropdown = juju["create_element"]({
	["name"] = "mode",
}, {
	["dropdown"] = {
		["default"] = { "ragebot" },
		["options"] = { "ragebot", "legitbot" },
		["requires_one"] = true,
		["multi"] = false,
		["flag"] = "mode_dropdown_targetui",
	},
})

juju["create_connection"](dropdown["on_dropdown_change"], function(val)
	if val[1] == "ragebot" then
		get_target = juju.get_ragebot_target
	else
		get_target = juju.get_legitbot_target
	end
end)

local function update_target_gui()
	local target = get_target()

	if target and target.Character and target.Character:FindFirstChild("Humanoid") then
		local humanoid = target.Character.Humanoid
		local playerEffects = target.Character:FindFirstChild("BodyEffects")
		local armorV = playerEffects:FindFirstChild("Armor")

		name.Text = target.Name

		health.Text = math.floor(humanoid.Health) .. "/" .. math.floor(humanoid.MaxHealth)

		armor.Text = math.floor(armorV.Value) .. "/130"

		if not priv9targethud.Enabled then
			priv9targethud.Enabled = true
		end
	else
		if priv9targethud.Enabled then
			priv9targethud.Enabled = false
		end
	end
end

create_connection(run_service.Heartbeat, function()
	update_target_gui()
end)

for i = 1, 30 do
	print("shaq is so cool and hot")
	create_notification("shaq is so cool and hot mmmm meowww", 1, 2)
end

juju.on_unload(function()
	TargetHud:Destroy()
	for i = 1, 30 do
		print("shaq is so cool and hot")
		create_notification("shaq is so cool and hot mmmm meowww", 1, 2)
	end
end)
