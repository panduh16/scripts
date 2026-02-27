local Juju = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIStroke = Instance.new("UIStroke")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local target = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local health = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local armor = Instance.new("Frame")
local UIListLayout_4 = Instance.new("UIListLayout")
local TextLabel_6 = Instance.new("TextLabel")
local TextLabel_7 = Instance.new("TextLabel")

Juju.Name = tostring(crypt.generatebytes(7))
Juju.Parent = gethui()
Juju.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Juju
Frame.Draggable = true
Frame.Active = true
Frame.Selectable = true
Frame.AnchorPoint = Vector2.new(0.5, 0.200000003)
Frame.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.200000003, 0)
Frame.Size = UDim2.new(0, 268, 0, 107)

UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(45, 45, 45)
UIStroke.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke.Thickness = 3
UIStroke.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0, 268, 0, 30)

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "target info"
TextLabel.TextColor3 = Color3.fromRGB(195, 195, 195)
TextLabel.TextSize = 14.000

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.fromRGB(10, 12, 12)
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0, 0, 0.280373842, 0)
Frame_3.Size = UDim2.new(0, 268, 0, 77)

UIListLayout.Parent = Frame_3
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

target.Name = tostring(crypt.generatebytes(7))
target.Parent = Frame_3
target.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
target.BackgroundTransparency = 1.000
target.BorderColor3 = Color3.fromRGB(0, 0, 0)
target.BorderSizePixel = 0
target.Position = UDim2.new(0.0373134315, 0, 0, 0)
target.Size = UDim2.new(0, 252, 0, 25)

UIListLayout_2.Parent = target
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

TextLabel_2.Parent = target
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 103, 0, 27)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "target"
TextLabel_2.TextColor3 = Color3.fromRGB(195, 195, 195)
TextLabel_2.TextSize = 14.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_3.Parent = target
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.488805979, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0, 137, 0, 27)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "username"
TextLabel_3.TextColor3 = Color3.fromRGB(195, 195, 195)
TextLabel_3.TextSize = 14.000
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Right

health.Name = tostring(crypt.generatebytes(7))
health.Parent = Frame_3
health.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
health.BackgroundTransparency = 1.000
health.BorderColor3 = Color3.fromRGB(0, 0, 0)
health.BorderSizePixel = 0
health.Position = UDim2.new(0.0373134315, 0, 0.324675322, 0)
health.Size = UDim2.new(0, 252, 0, 25)

UIListLayout_3.Parent = health
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

TextLabel_4.Parent = health
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Size = UDim2.new(0, 103, 0, 27)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "health"
TextLabel_4.TextColor3 = Color3.fromRGB(195, 195, 195)
TextLabel_4.TextSize = 14.000
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_5.Parent = health
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.488805979, 0, 0, 0)
TextLabel_5.Size = UDim2.new(0, 137, 0, 27)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "100/100"
TextLabel_5.TextColor3 = Color3.fromRGB(195, 195, 195)
TextLabel_5.TextSize = 14.000
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Right

armor.Name = tostring(crypt.generatebytes(7))
armor.Parent = Frame_3
armor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
armor.BackgroundTransparency = 1.000
armor.BorderColor3 = Color3.fromRGB(0, 0, 0)
armor.BorderSizePixel = 0
armor.Position = UDim2.new(0.0373134315, 0, 0.649350643, 0)
armor.Size = UDim2.new(0, 252, 0, 25)

UIListLayout_4.Parent = armor
UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

TextLabel_6.Parent = armor
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Size = UDim2.new(0, 103, 0, 27)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "armor"
TextLabel_6.TextColor3 = Color3.fromRGB(195, 195, 195)
TextLabel_6.TextSize = 14.000
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_7.Parent = armor
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.488805979, 0, 0, 0)
TextLabel_7.Size = UDim2.new(0, 137, 0, 27)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "100/100"
TextLabel_7.TextColor3 = Color3.fromRGB(195, 195, 195)
TextLabel_7.TextSize = 14.000
TextLabel_7.TextXAlignment = Enum.TextXAlignment.Right

local juju = juju -- i hate type errors in vscode sorry
local create_connection = juju.create_connection
local run_service = cloneref(game:GetService("RunService"))
local tween_service = game:GetService("TweenService")
local get_target = juju.get_ragebot_target

local dropdown = juju["create_element"]({
    ["name"] = "mode"
}, {
    ["dropdown"] = {
        ["default"] = {"ragebot"},
        ["options"] = {"ragebot", "legitbot"},
        ["requires_one"] = true,
        ["multi"] = false,
		["flag"] = "mode_dropdown_targetui"
    }
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

        TextLabel_3.Text = target.Name

		TextLabel_5.Text = math.floor(humanoid.Health) .. "/" .. math.floor(humanoid.MaxHealth)

		TextLabel_7.Text = math.floor(armorV.Value) .. "/130"

        if not Juju.Enabled then
            Juju.Enabled = true
        end
    else
        if Juju.Enabled then
			Juju.Enabled = false
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
