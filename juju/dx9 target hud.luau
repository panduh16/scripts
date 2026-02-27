-- Generated using RoadToGlory's Converter v1.1 (RoadToGlory#9879)

-- Instances:

local Converted = {
	["_copywgrad"] = Instance.new("ScreenGui");
	["_Frame"] = Instance.new("Frame");
	["_UICorner"] = Instance.new("UICorner");
	["_Frame1"] = Instance.new("Frame");
	["_UICorner1"] = Instance.new("UICorner");
	["_pfpFrame"] = Instance.new("Frame");
	["_pfpUIGradient"] = Instance.new("UIGradient");
	["_UIStroke"] = Instance.new("UIStroke");
	["_pfp"] = Instance.new("ImageLabel");
	["_UICorner2"] = Instance.new("UICorner");
	["_pfpUICorner"] = Instance.new("UICorner");
	["_Frame2"] = Instance.new("Frame");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_name"] = Instance.new("TextLabel");
	["_studs"] = Instance.new("TextLabel");
	["_tool"] = Instance.new("TextLabel");
	["_healthbar"] = Instance.new("Frame");
	["_UICorner3"] = Instance.new("UICorner");
	["_UIStroke1"] = Instance.new("UIStroke");
	["_healthbarvalue"] = Instance.new("Frame");
	["_healthText"] = Instance.new("TextLabel");
	["_teleport"] = Instance.new("Frame");
	["_UICorner4"] = Instance.new("UICorner");
	["_teleportButton"] = Instance.new("TextButton");
	["_returnB"] = Instance.new("Frame");
	["_UICorner5"] = Instance.new("UICorner");
	["_returnButton"] = Instance.new("TextButton");
	["_armorbar"] = Instance.new("Frame");
	["_UICorner6"] = Instance.new("UICorner");
	["_UIStroke2"] = Instance.new("UIStroke");
	["_armorbarvalue"] = Instance.new("Frame");
	["_armorText"] = Instance.new("TextLabel");
	["_bar"] = Instance.new("Frame");
	["_barUIGradient"] = Instance.new("UIGradient");
	["_TextLabel"] = Instance.new("TextLabel");
	["_UIStroke3"] = Instance.new("UIStroke");
}

-- Properties:

Converted["_copywgrad"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_copywgrad"].Name = "copywgrad"
Converted["_copywgrad"].Parent = game:GetService("CoreGui")

Converted["_Frame"].AnchorPoint = Vector2.new(0.5, 0.8999999761581421)
Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(26.000000350177288, 26.000000350177288, 34.00000177323818)
Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame"].BorderSizePixel = 0
Converted["_Frame"].Position = UDim2.new(0.5, 0, 0.899999976, 0)
Converted["_Frame"].Size = UDim2.new(0, 400, 0, 125)
Converted["_Frame"].Parent = Converted["_copywgrad"]

Converted["_UICorner"].Parent = Converted["_Frame"]

Converted["_Frame1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frame1"].BackgroundTransparency = 1
Converted["_Frame1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame1"].BorderSizePixel = 0
Converted["_Frame1"].Position = UDim2.new(0, 0, 0.300000012, 0)
Converted["_Frame1"].Size = UDim2.new(0, 400, 0, 87)
Converted["_Frame1"].Parent = Converted["_Frame"]

Converted["_UICorner1"].CornerRadius = UDim.new(0, 12)
Converted["_UICorner1"].Parent = Converted["_Frame1"]

Converted["_pfpFrame"].AnchorPoint = Vector2.new(0, 0.5)
Converted["_pfpFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_pfpFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_pfpFrame"].BorderSizePixel = 0
Converted["_pfpFrame"].ClipsDescendants = true
Converted["_pfpFrame"].Position = UDim2.new(0.0225000009, 0, 0.5, 0)
Converted["_pfpFrame"].Size = UDim2.new(0, 75, 0, 75)
Converted["_pfpFrame"].Name = "pfpFrame"
Converted["_pfpFrame"].Parent = Converted["_Frame1"]

Converted["_pfpUIGradient"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(23.000000528991222, 20.000000707805157, 30.00000011175871)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(57.00000040233135, 53.00000064074993, 67.00000360608101))
}
Converted["_pfpUIGradient"].Rotation = -143
Converted["_pfpUIGradient"].Name = "pfpUIGradient"
Converted["_pfpUIGradient"].Parent = Converted["_pfpFrame"]

Converted["_UIStroke"].Color = Color3.fromRGB(70.00000342726707, 65.0000037252903, 82.00000271201134)
Converted["_UIStroke"].Parent = Converted["_pfpFrame"]

Converted["_pfp"].Image = "rbxthumb://type=AvatarHeadShot&id=435761&w=420&h=420"
Converted["_pfp"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_pfp"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_pfp"].BackgroundTransparency = 1
Converted["_pfp"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_pfp"].BorderSizePixel = 0
Converted["_pfp"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_pfp"].Size = UDim2.new(1, 0, 1, 0)
Converted["_pfp"].Name = "pfp"
Converted["_pfp"].Parent = Converted["_pfpFrame"]

Converted["_UICorner2"].CornerRadius = UDim.new(0, 2)
Converted["_UICorner2"].Parent = Converted["_pfp"]

Converted["_pfpUICorner"].CornerRadius = UDim.new(0, 2)
Converted["_pfpUICorner"].Name = "pfpUICorner"
Converted["_pfpUICorner"].Parent = Converted["_pfpFrame"]

Converted["_Frame2"].AnchorPoint = Vector2.new(0.5, 0)
Converted["_Frame2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frame2"].BackgroundTransparency = 1
Converted["_Frame2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame2"].BorderSizePixel = 0
Converted["_Frame2"].Position = UDim2.new(0.607500017, 0, 0.068965517, 0)
Converted["_Frame2"].Size = UDim2.new(0, 307, 0, 47)
Converted["_Frame2"].Parent = Converted["_Frame1"]

Converted["_UIListLayout"].Padding = UDim.new(0, 1)
Converted["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout"].Parent = Converted["_Frame2"]

Converted["_name"].Font = Enum.Font.RobotoMono
Converted["_name"].Text = "king (@shaq)"
Converted["_name"].TextColor3 = Color3.fromRGB(239.00000095367432, 239.00000095367432, 240.00000089406967)
Converted["_name"].TextSize = 14
Converted["_name"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_name"].AnchorPoint = Vector2.new(0.05000000074505806, 0.05000000074505806)
Converted["_name"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_name"].BackgroundTransparency = 1
Converted["_name"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_name"].BorderSizePixel = 0
Converted["_name"].Position = UDim2.new(0, 16, 0, 1)
Converted["_name"].Size = UDim2.new(1, 0, 0.300000012, 0)
Converted["_name"].Name = "name"
Converted["_name"].Parent = Converted["_Frame2"]

Converted["_studs"].Font = Enum.Font.RobotoMono
Converted["_studs"].Text = "999 studs"
Converted["_studs"].TextColor3 = Color3.fromRGB(239.00000095367432, 239.00000095367432, 240.00000089406967)
Converted["_studs"].TextSize = 14
Converted["_studs"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_studs"].AnchorPoint = Vector2.new(0.05000000074505806, 0.05000000074505806)
Converted["_studs"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_studs"].BackgroundTransparency = 1
Converted["_studs"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_studs"].BorderSizePixel = 0
Converted["_studs"].Position = UDim2.new(0, -26, 0, 18)
Converted["_studs"].Size = UDim2.new(1, 0, 0.300000012, 0)
Converted["_studs"].Name = "studs"
Converted["_studs"].Parent = Converted["_Frame2"]

Converted["_tool"].Font = Enum.Font.RobotoMono
Converted["_tool"].Text = "tool: none"
Converted["_tool"].TextColor3 = Color3.fromRGB(239.00000095367432, 239.00000095367432, 240.00000089406967)
Converted["_tool"].TextSize = 14
Converted["_tool"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_tool"].AnchorPoint = Vector2.new(0.05000000074505806, 0.05000000074505806)
Converted["_tool"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_tool"].BackgroundTransparency = 1
Converted["_tool"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_tool"].BorderSizePixel = 0
Converted["_tool"].Position = UDim2.new(0, 16, 0, 1)
Converted["_tool"].Size = UDim2.new(1, 0, 0.300000012, 0)
Converted["_tool"].Name = "tool"
Converted["_tool"].Parent = Converted["_Frame2"]

Converted["_healthbar"].BackgroundColor3 = Color3.fromRGB(26.000000350177288, 26.000000350177288, 34.00000177323818)
Converted["_healthbar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_healthbar"].BorderSizePixel = 0
Converted["_healthbar"].ClipsDescendants = true
Converted["_healthbar"].Position = UDim2.new(0.223749995, 0, 0.700000286, 0)
Converted["_healthbar"].Size = UDim2.new(0, 303, 0, 20)
Converted["_healthbar"].Name = "healthbar"
Converted["_healthbar"].Parent = Converted["_Frame1"]

Converted["_UICorner3"].CornerRadius = UDim.new(0, 2)
Converted["_UICorner3"].Parent = Converted["_healthbar"]

Converted["_UIStroke1"].Color = Color3.fromRGB(70.00000342726707, 65.0000037252903, 82.00000271201134)
Converted["_UIStroke1"].Parent = Converted["_healthbar"]

Converted["_healthbarvalue"].BackgroundColor3 = Color3.fromRGB(92.00000211596489, 80.00000283122063, 125.00000774860382)
Converted["_healthbarvalue"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_healthbarvalue"].BorderSizePixel = 0
Converted["_healthbarvalue"].Position = UDim2.new(4.02872331e-07, 0, 0, 0)
Converted["_healthbarvalue"].Size = UDim2.new(0.699999988, 0, 1, 0)
Converted["_healthbarvalue"].Name = "healthbarvalue"
Converted["_healthbarvalue"].Parent = Converted["_healthbar"]

Converted["_healthText"].Font = Enum.Font.RobotoMono
Converted["_healthText"].Text = "70/100"
Converted["_healthText"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_healthText"].TextSize = 14
Converted["_healthText"].TextWrapped = true
Converted["_healthText"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_healthText"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_healthText"].BackgroundTransparency = 1
Converted["_healthText"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_healthText"].BorderSizePixel = 0
Converted["_healthText"].Position = UDim2.new(0.494243503, 0, 0.5, 0)
Converted["_healthText"].Size = UDim2.new(0.988487005, 0, 1, 0)
Converted["_healthText"].Name = "healthText"
Converted["_healthText"].Parent = Converted["_healthbar"]

Converted["_teleport"].BackgroundColor3 = Color3.fromRGB(33.00000183284283, 33.00000183284283, 43.00000123679638)
Converted["_teleport"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_teleport"].BorderSizePixel = 0
Converted["_teleport"].Position = UDim2.new(0.730000019, 0, 0.0804618746, 0)
Converted["_teleport"].Size = UDim2.new(0, 100, 0, 20)
Converted["_teleport"].Name = "teleport"
Converted["_teleport"].Parent = Converted["_Frame1"]

Converted["_UICorner4"].CornerRadius = UDim.new(0, 2)
Converted["_UICorner4"].Parent = Converted["_teleport"]

Converted["_teleportButton"].Font = Enum.Font.RobotoMono
Converted["_teleportButton"].Text = "Teleport"
Converted["_teleportButton"].TextColor3 = Color3.fromRGB(223.00000190734863, 224.000001847744, 224.000001847744)
Converted["_teleportButton"].TextSize = 14
Converted["_teleportButton"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_teleportButton"].BackgroundTransparency = 255
Converted["_teleportButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_teleportButton"].BorderSizePixel = 0
Converted["_teleportButton"].Size = UDim2.new(1, 0, 1, 0)
Converted["_teleportButton"].Name = "teleportButton"
Converted["_teleportButton"].Parent = Converted["_teleport"]

Converted["_returnB"].BackgroundColor3 = Color3.fromRGB(33.00000183284283, 33.00000183284283, 43.00000123679638)
Converted["_returnB"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_returnB"].BorderSizePixel = 0
Converted["_returnB"].Position = UDim2.new(0.730000019, 0, 0.367818207, 0)
Converted["_returnB"].Size = UDim2.new(0, 100, 0, 20)
Converted["_returnB"].Name = "returnB"
Converted["_returnB"].Parent = Converted["_Frame1"]

Converted["_UICorner5"].CornerRadius = UDim.new(0, 2)
Converted["_UICorner5"].Parent = Converted["_returnB"]

Converted["_returnButton"].Font = Enum.Font.RobotoMono
Converted["_returnButton"].Text = "Return"
Converted["_returnButton"].TextColor3 = Color3.fromRGB(223.00000190734863, 224.000001847744, 224.000001847744)
Converted["_returnButton"].TextSize = 14
Converted["_returnButton"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_returnButton"].BackgroundTransparency = 255
Converted["_returnButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_returnButton"].BorderSizePixel = 0
Converted["_returnButton"].Size = UDim2.new(1, 0, 1, 0)
Converted["_returnButton"].Name = "returnButton"
Converted["_returnButton"].Parent = Converted["_returnB"]

Converted["_armorbar"].BackgroundColor3 = Color3.fromRGB(26.000000350177288, 26.000000350177288, 34.00000177323818)
Converted["_armorbar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_armorbar"].BorderSizePixel = 0
Converted["_armorbar"].ClipsDescendants = true
Converted["_armorbar"].Position = UDim2.new(0.608749986, 0, 0.700000286, 0)
Converted["_armorbar"].Size = UDim2.new(0, 145, 0, 20)
Converted["_armorbar"].Visible = false
Converted["_armorbar"].Name = "armorbar"
Converted["_armorbar"].Parent = Converted["_Frame1"]

Converted["_UICorner6"].CornerRadius = UDim.new(0, 2)
Converted["_UICorner6"].Parent = Converted["_armorbar"]

Converted["_UIStroke2"].Color = Color3.fromRGB(70.00000342726707, 65.0000037252903, 82.00000271201134)
Converted["_UIStroke2"].Parent = Converted["_armorbar"]

Converted["_armorbarvalue"].BackgroundColor3 = Color3.fromRGB(79.00000289082527, 120.00000804662704, 125.00000774860382)
Converted["_armorbarvalue"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_armorbarvalue"].BorderSizePixel = 0
Converted["_armorbarvalue"].Position = UDim2.new(4.02872331e-07, 0, 0, 0)
Converted["_armorbarvalue"].Size = UDim2.new(0.769999981, 0, 1, 0)
Converted["_armorbarvalue"].Name = "armorbarvalue"
Converted["_armorbarvalue"].Parent = Converted["_armorbar"]

Converted["_armorText"].Font = Enum.Font.RobotoMono
Converted["_armorText"].Text = "100/130"
Converted["_armorText"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_armorText"].TextSize = 14
Converted["_armorText"].TextWrapped = true
Converted["_armorText"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_armorText"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_armorText"].BackgroundTransparency = 1
Converted["_armorText"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_armorText"].BorderSizePixel = 0
Converted["_armorText"].Position = UDim2.new(0.494243503, 0, 0.5, 0)
Converted["_armorText"].Size = UDim2.new(0.988487005, 0, 1, 0)
Converted["_armorText"].Name = "armorText"
Converted["_armorText"].Parent = Converted["_armorbar"]

Converted["_bar"].AnchorPoint = Vector2.new(0.5, 0.30000001192092896)
Converted["_bar"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_bar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_bar"].BorderSizePixel = 0
Converted["_bar"].Position = UDim2.new(0.5, 0, 0.284000099, 0)
Converted["_bar"].Size = UDim2.new(0, 395, 0, 1)
Converted["_bar"].Name = "bar"
Converted["_bar"].Parent = Converted["_Frame"]

Converted["_barUIGradient"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(92.00000211596489, 12.000000234693289, 130.0000074505806)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(229.00000154972076, 219.0000021457672, 194.00000363588333))
}
Converted["_barUIGradient"].Offset = Vector2.new(0.10000000149011612, 0.10000000149011612)
Converted["_barUIGradient"].Rotation = 180
Converted["_barUIGradient"].Name = "barUIGradient"
Converted["_barUIGradient"].Parent = Converted["_bar"]

Converted["_TextLabel"].Font = Enum.Font.RobotoMono
Converted["_TextLabel"].Text = "Target Hud"
Converted["_TextLabel"].TextColor3 = Color3.fromRGB(239.00000095367432, 239.00000095367432, 240.00000089406967)
Converted["_TextLabel"].TextSize = 14
Converted["_TextLabel"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel"].AnchorPoint = Vector2.new(0.05000000074505806, 0.05000000074505806)
Converted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].BackgroundTransparency = 1
Converted["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel"].BorderSizePixel = 0
Converted["_TextLabel"].Position = UDim2.new(0, 16, 0, 1)
Converted["_TextLabel"].Size = UDim2.new(0, 121, 0, 38)
Converted["_TextLabel"].Parent = Converted["_Frame"]

Converted["_UIStroke3"].Color = Color3.fromRGB(70.00000342726707, 65.0000037252903, 82.00000271201134)
Converted["_UIStroke3"].Parent = Converted["_Frame"]


local juju = juju -- i hate type errors in vscode sorry
local create_connection = juju.create_connection
local create_notification = juju.create_notification
local run_service = game:GetService("RunService")
local tween_service = game:GetService("TweenService")
local players = game:GetService("Players")
local lplayer = players.LocalPlayer
local get_target = juju.get_ragebot_target
local lastPos = lplayer.Character and lplayer.Character:FindFirstChild("HumanoidRootPart") and lplayer.Character.HumanoidRootPart.CFrame or CFrame.new()

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

local heightSlider = juju["create_element"]({
    ["name"] = "height"
}, {
    ["slider"] = {
        ["min_text"] = "Min",
        ["max_text"] = "Max",
        ["decimals"] = 2,
        ["default"] = 0.9,
        ["prefix"] = "",
        ["suffix"] = " px",
        ["flag"] = "height_targetui",
        ["min"] = 0,
        ["max"] = 1
    }
})

local pfpRounding = juju["create_element"]({
    ["name"] = "pfp rounding"
}, {
    ["slider"] = {
        ["min_text"] = "Min",
        ["max_text"] = "Max",
        ["decimals"] = 1,
        ["default"] = 2,
        ["prefix"] = "",
        ["suffix"] = " px",
        ["flag"] = "pfprounding_targetui",
        ["min"] = 0,
        ["max"] = 50
    }
})

local titleE = juju["create_element"]({
    ["name"] = "title"
}, {
    ["textbox"] = {
        ["default"] = "Target Hud",
        ["flag"] = "title_textbox_targetui"
    }
})

local color = juju["create_element"]({
    ["name"] = "bg color"
}, {
    ["colorpicker"] = {
        ["default_color"] = Color3.fromRGB(255, 255, 255),
        ["color_flag"] = "bg_color_targetui",
        ["default_transparency"] = 0,
        ["transparency_flag"] = "USELESSFLAGOKSADPOKASDPOK"
    }
})

local bcolor = juju["create_element"]({
    ["name"] = "border color"
}, {
    ["colorpicker"] = {
        ["default_color"] = Color3.fromRGB(255, 255, 255),
        ["color_flag"] = "border_color_targetui",
        ["default_transparency"] = 0,
        ["transparency_flag"] = "USELESSFLAGOKSADPOKASDPOK"
    }
})

local bar_gradient_toggle = juju["create_element"]({
    ["name"] = "bar gradient"
}, {
    ["toggle"] = {
        ["default"] = true,
        ["flag"] = "bargradient_targetui"
    }
})

local barcolor = juju["create_element"]({
    ["name"] = "bar color"
}, {
    ["colorpicker"] = {
        ["default_color"] = Color3.fromRGB(255, 255, 255),
        ["color_flag"] = "bar_color_targetui",
        ["default_transparency"] = 0,
        ["transparency_flag"] = "USELESSFLAGOKSADPOKASDPOK"
    }
})

local hbarcolor = juju["create_element"]({
    ["name"] = "health bar color"
}, {
    ["colorpicker"] = {
        ["default_color"] = Color3.fromRGB(255, 255, 255),
        ["color_flag"] = "health_bar_color_targetui",
        ["default_transparency"] = 0,
        ["transparency_flag"] = "USELESSFLAGOKSADPOKASDPOK"
    }
})

local armorbar_toggle = juju["create_element"]({
    ["name"] = "armor bar"
}, {
    ["toggle"] = {
        ["default"] = false,
        ["flag"] = "armorbar_enabled"
    }
})

local armorBarColor = juju["create_element"]({
    ["name"] = "armor bar color"
}, {
    ["colorpicker"] = {
        ["default_color"] = Color3.fromRGB(255, 255, 255),
        ["color_flag"] = "armor_color_targetui",
        ["default_transparency"] = 0,
        ["transparency_flag"] = "USELESSFLAGOKSADPOKASDPOK"
    }
})

local pfpbgcolor = juju["create_element"]({
    ["name"] = "pfp bg color"
}, {
    ["colorpicker"] = {
        ["default_color"] = Color3.fromRGB(255, 255, 255),
        ["color_flag"] = "pfpbg_color_targetui",
        ["default_transparency"] = 0,
        ["transparency_flag"] = "USELESSFLAGOKSADPOKASDPOK"
    }
})

local buttonscolor = juju["create_element"]({
    ["name"] = "buttons color"
}, {
    ["colorpicker"] = {
        ["default_color"] = Color3.fromRGB(255, 255, 255),
        ["color_flag"] = "buttonsbg_color_targetui",
        ["default_transparency"] = 0,
        ["transparency_flag"] = "USELESSFLAGOKSADPOKASDPOK"
    }
})

juju["create_connection"](dropdown["on_dropdown_change"], function(val)
    if val[1] == "ragebot" then
        get_target = juju.get_ragebot_target
    else
        get_target = juju.get_legitbot_target
    end
end)

juju["create_connection"](heightSlider["on_slider_change"], function(val)
    Converted["_Frame"].Position = UDim2.new(0.5, 0, val, 0)
end)

juju["create_connection"](pfpRounding["on_slider_change"], function(val)
    Converted["_UICorner2"].CornerRadius = UDim.new(0, val)
    Converted["_pfpUICorner"].CornerRadius = UDim.new(0, val)
end)

juju["create_connection"](titleE["on_textbox_change"], function(val)
    if val ~= Converted["_TextLabel"].Text then
        Converted["_TextLabel"].Text = val
    end
end)

juju["create_connection"](color["on_color_change"], function(val)
    Converted["_Frame"].BackgroundColor3 = val
end)

juju["create_connection"](bcolor["on_color_change"], function(val)
    Converted["_UIStroke"].Color = val
    Converted["_UIStroke1"].Color = val
    Converted["_UIStroke2"].Color = val
    Converted["_UIStroke3"].Color = val
end)

juju["create_connection"](bar_gradient_toggle["on_toggle_change"], function(val)
    Converted["_barUIGradient"].Enabled = val
end)

juju["create_connection"](armorbar_toggle["on_toggle_change"], function(val)
    if val == true then
        tween_service:Create(Converted["_healthbar"], TweenInfo.new(0.1, Enum.EasingStyle.Quad), {
            Size = UDim2.new(0, 145, 0, 20)
        }):Play()
    else
        tween_service:Create(Converted["_healthbar"], TweenInfo.new(0.1, Enum.EasingStyle.Quad), {
            Size = UDim2.new(0, 303, 0, 20)
        }):Play()
    end
    task.wait(0.1)
    Converted["_armorbar"].Visible = val
end)

juju["create_connection"](barcolor["on_color_change"], function(val)
    Converted["_bar"].BackgroundColor3 = val
end)

juju["create_connection"](hbarcolor["on_color_change"], function(val)
    Converted["_healthbarvalue"].BackgroundColor3 = val
end)

juju["create_connection"](armorBarColor["on_color_change"], function(val)
    Converted["_armorbarvalue"].BackgroundColor3 = val
end)

juju["create_connection"](pfpbgcolor["on_color_change"], function(val)
    Converted["_pfpFrame"].BackgroundColor3 = val
end)

juju["create_connection"](buttonscolor["on_color_change"], function(val)
    Converted["_returnB"].BackgroundColor3 = val
    Converted["_teleport"].BackgroundColor3 = val
end)

local function update_target_gui()
    local target = get_target()

    if target and target.Character and target.Character:FindFirstChild("Humanoid") then
        local humanoid = target.Character.Humanoid
        local bodyEffects = target.Character:FindFirstChild("BodyEffects")
        local armorV = bodyEffects and bodyEffects:FindFirstChild("Armor") or nil

        local weaponV = target.Character:FindFirstChildOfClass("Tool")

        local lPlayerCharacter = players.LocalPlayer.Character
        local distance = lPlayerCharacter and lPlayerCharacter:FindFirstChild("HumanoidRootPart") and target.Character:FindFirstChild("HumanoidRootPart") and target.Character.HumanoidRootPart.Position - lPlayerCharacter.HumanoidRootPart.Position or Vector3.new(0,0,0)
        local distanceM = distance.Magnitude

        local health_ratio = math.clamp(humanoid.Health / humanoid.MaxHealth, 0, 1)
        local armor_ratio = armorV and math.clamp(armorV.Value / 130, 0, 1) or 0

        if target.Name ~= target.DisplayName then
            local full = target.DisplayName .. " (@" .. target.Name .. ")"
            if string.len(full) > 30 then
                Converted["_name"].Text = string.sub(full, 1, 17) .. "..."
            else
                Converted["_name"].Text = full
            end
        else
            if string.len(target.Name) > 30 then
                Converted["_name"].Text = string.sub(target.Name, 1, 17) .. "..."
            else
                Converted["_name"].Text = target.Name
            end
        end

        Converted["_studs"].Text = math.floor(distanceM) .. " studs"

        if weaponV then
            Converted["_tool"].Text = "tool: " .. weaponV.Name
        else
            if Converted["_tool"].Text ~= "tool: none" then
                Converted["_tool"].Text = "tool: none"
            end
        end

        tween_service:Create(Converted["_healthbarvalue"], TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
            Size = UDim2.new(health_ratio, 0, 1, 0)
        }):Play()
        Converted["_healthText"].Text = math.floor(humanoid.Health) .. "/100"

        if armorV then
            tween_service:Create(Converted["_armorbarvalue"], TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                Size = UDim2.new(armor_ratio, 0, 1, 0)
            }):Play()
            Converted["_armorText"].Text = armorV.Value .. "/130"
        end


        Converted["_pfp"].Image = "rbxthumb://type=AvatarHeadShot&id="..target.UserId.."&w=420&h=420"
        if not Converted["_copywgrad"].Enabled then
            Converted["_copywgrad"].Enabled = true
        end
    else
        if Converted["_copywgrad"].Enabled then
            Converted["_copywgrad"].Enabled = false
        end
    end
end

create_connection(run_service.Heartbeat, function()
    update_target_gui()
end)

Converted["_teleportButton"].MouseButton1Click:Connect(function()
    local target = get_target()
    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
        lastPos = lplayer.Character and lplayer.Character:FindFirstChild("HumanoidRootPart") and lplayer.Character.HumanoidRootPart.CFrame or CFrame.new()
        local targetPosition = target.Character.HumanoidRootPart.CFrame
        local newPosition = targetPosition
        local character = lplayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character.HumanoidRootPart.CFrame = newPosition
        end
    end
end)

Converted["_returnButton"].MouseButton1Click:Connect(function()
    local character = lplayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = lastPos
    end
end)


for i = 1, 30 do
    print("shaq is so cool and hot")
    create_notification("shaq is so cool and hot mmmm meowww", 1, 2)
end

juju.on_unload(function()
    if Converted["_copywgrad"] and Converted["_copywgrad"].Parent then
        Converted["_copywgrad"]:Destroy()
    end
    for i = 1, 30 do
        print("shaq is so cool and hot")
        create_notification("shaq is so cool and hot mmmm meowww", 1, 2)
    end
end)
