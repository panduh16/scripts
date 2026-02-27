-- Generated using RoadToGlory's Converter v1.1 (RoadToGlory#9879)

-- Instances:

local Converted = {
	["_keybinds"] = Instance.new("ScreenGui");
	["_Frame"] = Instance.new("Frame");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_UIPadding"] = Instance.new("UIPadding");
	["_Frame1"] = Instance.new("Frame");
	["_Frame2"] = Instance.new("Frame");
	["_Frame3"] = Instance.new("Frame");
	["_UIGradient"] = Instance.new("UIGradient");
	["_bar"] = Instance.new("Frame");
	["_UIGradient1"] = Instance.new("UIGradient");
	["_holder"] = Instance.new("Frame");
	["_UIPadding1"] = Instance.new("UIPadding");
	["_keybinds1"] = Instance.new("Frame");
	["_Frame4"] = Instance.new("Frame");
	["_UIListLayout1"] = Instance.new("UIListLayout");
	["_example"] = Instance.new("TextLabel");
	["_UIStroke"] = Instance.new("UIStroke");
	["_UIPadding2"] = Instance.new("UIPadding");
	["_example1"] = Instance.new("TextLabel");
	["_UIStroke1"] = Instance.new("UIStroke");
	["_UIPadding3"] = Instance.new("UIPadding");
	["_top"] = Instance.new("Frame");
	["_TextLabel"] = Instance.new("TextLabel");
	["_UIPadding4"] = Instance.new("UIPadding");
	["_UIStroke2"] = Instance.new("UIStroke");
}

-- Properties:

Converted["_keybinds"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_keybinds"].Name = "keybinds"
Converted["_keybinds"].Parent = gethui()

Converted["_Frame"].AnchorPoint = Vector2.new(0.05, 0.5)
Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frame"].BackgroundTransparency = 1
Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame"].BorderSizePixel = 0
Converted["_Frame"].Position = UDim2.new(0.05, 0, 0.5, 0)
Converted["_Frame"].Size = UDim2.new(0, 200, 0, 65)
Converted["_Frame"].Parent = Converted["_keybinds"]

Converted["_UIListLayout"].Padding = UDim.new(0, 4)
Converted["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout"].Parent = Converted["_Frame"]

Converted["_UIPadding"].PaddingBottom = UDim.new(0, 4)
Converted["_UIPadding"].Parent = Converted["_Frame"]

Converted["_Frame1"].BackgroundColor3 = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709)
Converted["_Frame1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame1"].BorderSizePixel = 0
Converted["_Frame1"].Size = UDim2.new(1, -1, 1, 0)
Converted["_Frame1"].Parent = Converted["_Frame"]

Converted["_Frame2"].BackgroundColor3 = Color3.fromRGB(10.000000353902578, 10.000000353902578, 10.000000353902578)
Converted["_Frame2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame2"].BorderSizePixel = 0
Converted["_Frame2"].Position = UDim2.new(0, 1, 0, 1)
Converted["_Frame2"].Size = UDim2.new(1, -2, 1, -2)
Converted["_Frame2"].Parent = Converted["_Frame1"]

Converted["_Frame3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frame3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame3"].BorderSizePixel = 0
Converted["_Frame3"].Position = UDim2.new(0, 1, 0, 1)
Converted["_Frame3"].Size = UDim2.new(1, -2, 1, -2)
Converted["_Frame3"].Parent = Converted["_Frame2"]

Converted["_UIGradient"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(29.99998491257429, 29.99998491257429, 29.99998491257429)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(20.000006407499313, 20.000006407499313, 20.000006407499313))
}
Converted["_UIGradient"].Parent = Converted["_Frame3"]

Converted["_bar"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_bar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_bar"].BorderSizePixel = 0
Converted["_bar"].Size = UDim2.new(1, 0, 0, 2)
Converted["_bar"].Name = "bar"
Converted["_bar"].Parent = Converted["_Frame3"]

Converted["_UIGradient1"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(96.00010827183723, 119.99993965029716, 189.9999886751175)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(100.00003203749657, 112.99993246793747, 168.99997472763062))
}
Converted["_UIGradient1"].Parent = Converted["_bar"]

Converted["_holder"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_holder"].BackgroundTransparency = 1
Converted["_holder"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_holder"].BorderSizePixel = 0
Converted["_holder"].Position = UDim2.new(0, 1, 0, 25)
Converted["_holder"].Size = UDim2.new(1, -2, 1, -24)
Converted["_holder"].Name = "holder"
Converted["_holder"].Parent = Converted["_Frame3"]

Converted["_UIPadding1"].PaddingBottom = UDim.new(0, 2)
Converted["_UIPadding1"].PaddingLeft = UDim.new(0, 3)
Converted["_UIPadding1"].PaddingRight = UDim.new(0, 3)
Converted["_UIPadding1"].PaddingTop = UDim.new(0, -1)
Converted["_UIPadding1"].Parent = Converted["_holder"]

Converted["_keybinds1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_keybinds1"].BackgroundTransparency = 1
Converted["_keybinds1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_keybinds1"].BorderSizePixel = 0
Converted["_keybinds1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_keybinds1"].Name = "keybinds"
Converted["_keybinds1"].Parent = Converted["_holder"]

Converted["_Frame4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frame4"].BackgroundTransparency = 1
Converted["_Frame4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame4"].BorderSizePixel = 0
Converted["_Frame4"].Position = UDim2.new(-0.0129449842, 0, 0.0294117928, 0)
Converted["_Frame4"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Frame4"].Parent = Converted["_keybinds1"]

Converted["_UIListLayout1"].Padding = UDim.new(0, 2)
Converted["_UIListLayout1"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout1"].Parent = Converted["_Frame4"]

Converted["_UIStroke1"].LineJoinMode = Enum.LineJoinMode.Miter
Converted["_UIStroke1"].Parent = Converted["_example1"]

Converted["_UIPadding3"].PaddingLeft = UDim.new(0, 2)
Converted["_UIPadding3"].Parent = Converted["_example1"]

Converted["_top"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_top"].BackgroundTransparency = 1
Converted["_top"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_top"].BorderSizePixel = 0
Converted["_top"].Position = UDim2.new(0, 0, 0, 2)
Converted["_top"].Size = UDim2.new(1, 0, 0, 20)
Converted["_top"].Name = "top"
Converted["_top"].Parent = Converted["_Frame3"]

Converted["_TextLabel"].Font = Enum.Font.SourceSans
Converted["_TextLabel"].Text = "Keybinds"
Converted["_TextLabel"].TextColor3 = Color3.fromRGB(180.00000447034836, 180.00000447034836, 180.00000447034836)
Converted["_TextLabel"].TextSize = 12
Converted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].BackgroundTransparency = 1
Converted["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel"].BorderSizePixel = 0
Converted["_TextLabel"].Size = UDim2.new(1, 0, 1, 0)
Converted["_TextLabel"].Parent = Converted["_top"]

Converted["_UIPadding4"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding4"].Parent = Converted["_TextLabel"]

Converted["_UIStroke2"].LineJoinMode = Enum.LineJoinMode.Miter
Converted["_UIStroke2"].Parent = Converted["_TextLabel"]

local juju = juju -- i hate type errors in vscode sorry
local create_connection = juju.create_connection
local run_service = cloneref(game:GetService("RunService"))
local create_notification = juju.create_notification

local function update_keybind_gui()
    local keybinds = juju.get_active_keybinds()

    for _, child in pairs(Converted["_Frame4"]:GetChildren()) do
        if child:IsA("TextLabel") then
            child:Destroy()
        end
    end

    local count = 0

    for name, _ in pairs(keybinds) do
        count = count + 1
        local label = Instance.new("TextLabel")
        label.Name = "KeybindLabel"
        label.Size = UDim2.new(1, 0, 0, 14)
        label.BackgroundTransparency = 1
        label.TextColor3 = Color3.fromRGB(180, 180, 180)
        label.Font = Enum.Font.SourceSans
        label.TextSize = 12
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Text = string.format(tostring(name))
        label.Parent = Converted["_Frame4"]
    end

    local newHeight

    if count <= 3 then
        newHeight = 37 + (count * 15)
    elseif count <= 5 then
        newHeight = 40 + (count * 15)
    elseif count <= 8 then
        newHeight = 43 + (count * 15)
    elseif count <= 10 then
        newHeight = 45 + (count * 15)
    else
        newHeight = 50 + (count * 15)
    end
    Converted["_Frame"].Size = UDim2.new(0, 200, 0, newHeight)
end


create_connection(run_service.Heartbeat, function()
    update_keybind_gui()
end)

for i = 1, 30 do
    print("shaq is so cool and hot")
    create_notification("shaq is so cool and hot mmmm meowww", 1, 2)
end

juju.on_unload(function()
    Converted["_keybinds"]:Destroy()
    for i = 1, 30 do
        print("shaq is so cool and hot")
        create_notification("shaq is so cool and hot mmmm meowww", 1, 2)
    end
end)
