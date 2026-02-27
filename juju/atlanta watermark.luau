-- Generated using RoadToGlory's Converter v1.1 (RoadToGlory#9879)

-- Instances:

local Converted = {
	["_watermark"] = Instance.new("ScreenGui");
	["_Frame"] = Instance.new("Frame");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_UIPadding"] = Instance.new("UIPadding");
	["_Frame1"] = Instance.new("Frame");
	["_Frame2"] = Instance.new("Frame");
	["_Frame3"] = Instance.new("Frame");
	["_UIGradient"] = Instance.new("UIGradient");
	["_bar"] = Instance.new("Frame");
	["_UIGradient1"] = Instance.new("UIGradient");
	["_info"] = Instance.new("Frame");
	["_TextLabel"] = Instance.new("TextLabel");
	["_UIPadding1"] = Instance.new("UIPadding");
	["_UIStroke"] = Instance.new("UIStroke");
}

-- Properties:

Converted["_watermark"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_watermark"].Name = "watermark"
Converted["_watermark"].Parent = game:GetService("CoreGui")

Converted["_Frame"].AnchorPoint = Vector2.new(0.05000000074505806, 0.05000000074505806)
Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frame"].BackgroundTransparency = 1
Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame"].BorderSizePixel = 0
Converted["_Frame"].Position = UDim2.new(0.0528378375, 0, 0.0500000007, 0)
Converted["_Frame"].Size = UDim2.new(0, 263, 0, 30)
Converted["_Frame"].Parent = Converted["_watermark"]

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

Converted["_info"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_info"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_info"].BackgroundTransparency = 1
Converted["_info"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_info"].BorderSizePixel = 0
Converted["_info"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_info"].Size = UDim2.new(1, 0, 0, 15)
Converted["_info"].Name = "info"
Converted["_info"].Parent = Converted["_Frame3"]

Converted["_TextLabel"].Font = Enum.Font.SourceSans
Converted["_TextLabel"].Text = "Shaqhook - v1.0 - Ultra Private - UID 1- May 10 2025 - 16:01:06"
Converted["_TextLabel"].TextColor3 = Color3.fromRGB(180.00000447034836, 180.00000447034836, 180.00000447034836)
Converted["_TextLabel"].TextSize = 12
Converted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].BackgroundTransparency = 1
Converted["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel"].BorderSizePixel = 0
Converted["_TextLabel"].Size = UDim2.new(1, 0, 1, 0)
Converted["_TextLabel"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_TextLabel"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextLabel"].Parent = Converted["_info"]

Converted["_UIPadding1"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding1"].Parent = Converted["_TextLabel"]
Converted["_UIPadding1"].PaddingRight = UDim.new(0, 5)

Converted["_UIStroke"].LineJoinMode = Enum.LineJoinMode.Miter
Converted["_UIStroke"].Parent = Converted["_TextLabel"]

local juju = juju -- i hate type errors in vscode sorry
local create_connection = juju.create_connection
local run_service = cloneref(game:GetService("RunService"))
local create_notification = juju.create_notification
local textservice = game:GetService("TextService")
local newText = "Shaqhook - v4.0 - Ultra Private - [name] - [exe] - [time]"
local accentt = Color3.fromRGB(96,120,190)
local accentt2 = Color3.fromRGB(100,112,168)
local posx = 0.05
local posy = 0.5

local watermarktext = juju.create_element({
    ["name"] = "watermark text"
}, {
    ["textbox"] = {
        ["default"] = "Shaqhook - v4.0 - Ultra Private - [name] - [exe] - [time]",
        ["flag"] = "watermarktext"
    }
})

local accent = juju["create_element"]({
    ["name"] = "accent color 1"
}, {
    ["colorpicker"] = {
        ["default_color"] = Color3.fromRGB(96, 120, 190),
        ["color_flag"] = "bg_color_targetui",
        ["default_transparency"] = 0,
        ["transparency_flag"] = "USELESSFLAGOKSADPOKASDPOK"
    }
})

local accent2 = juju["create_element"]({
    ["name"] = "accent color 2"
}, {
    ["colorpicker"] = {
        ["default_color"] = Color3.fromRGB(100, 112, 168),
        ["color_flag"] = "bg_color_targetui",
        ["default_transparency"] = 0,
        ["transparency_flag"] = "USELESSFLAGOKSADPOKASDPOK"
    }
})

local posxs = juju["create_element"]({
    ["name"] = "position x"
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

local posys = juju["create_element"]({
    ["name"] = "position y"
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

juju["create_connection"](posxs["on_slider_change"], function(val)
    posx = val
end)

juju["create_connection"](posys["on_slider_change"], function(val)
    posy = val
end)

juju["create_connection"](accent["on_color_change"], function(val)
    accentt = val
end)

juju["create_connection"](accent2["on_color_change"], function(val)
    accentt2 = val
end)

juju["create_connection"](watermarktext["on_textbox_change"], function(val)
    newText = val
end)

local function TIMEEEE()
    local t = os.date("*t")
    return string.format("%s %02d %04d - %02d:%02d:%02d",
        os.date("%B", os.time()),
        t.day,
        t.year,
        t.hour,
        t.min,
        t.sec
    )
end

local function PARSECOOLTEXT(text)
    text = text:gsub("%[time%]", TIMEEEE())
    text = text:gsub("%[name%]", game.Players.LocalPlayer.Name)
    text = text:gsub("%[display%]", game.Players.LocalPlayer.DisplayName)
    text = text:gsub("%[exe%]", tostring(identifyexecutor()))
    return text
end

local function update_watermark_gui()
    Converted["_UIGradient1"].Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, accentt),
        ColorSequenceKeypoint.new(1, accentt2)
    }
    Converted["_Frame"].Position = UDim2.new(posx, 0, posy, 0)
    Converted["_Frame"].AnchorPoint = Vector2.new(posx, posy)
    local parsedtext = PARSECOOLTEXT(newText)
    local font = Converted["_TextLabel"].Font
    local textSize = Converted["_TextLabel"].TextSize
    local size = textservice:GetTextSize(parsedtext, textSize, font, Vector2.new(math.huge, math.huge))
    Converted["_TextLabel"].Text = parsedtext
    Converted["_Frame"].Size = UDim2.new(0, size.X + 10, Converted["_Frame"].Size.Y.Scale, Converted["_Frame"].Size.Y.Offset)
end


create_connection(run_service.Heartbeat, function()
    update_watermark_gui()
end)

for i = 1, 30 do
    print("shaq is so cool and hot")
    create_notification("shaq is so cool and hot mmmm meowww", 1, 2)
end

juju.on_unload(function()
    Converted["_watermark"]:Destroy()
    for i = 1, 30 do
        print("shaq is so cool and hot")
        create_notification("shaq is so cool and hot mmmm meowww", 1, 2)
    end
end)
