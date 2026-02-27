-- mmm shaq mmm shaqhqhqhahqhaqh

local TargetHud = Instance.new("ScreenGui")
local TopBar = Instance.new("Frame")
local Bg = Instance.new("Frame")
local Inside = Instance.new("Frame")
local HealthBar = Instance.new("Frame")
local Base = Instance.new("Frame")
local Value = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UIStroke = Instance.new("UIStroke")
local PfpBg = Instance.new("Frame")
local UIStroke_2 = Instance.new("UIStroke")
local PFP = Instance.new("ImageLabel")
local UIGradient_2 = Instance.new("UIGradient")
local name = Instance.new("TextLabel")
local ArmorBar = Instance.new("Frame")
local Base_2 = Instance.new("Frame")
local Value_2 = Instance.new("Frame")
local UIGradient_3 = Instance.new("UIGradient")
local UIStroke_3 = Instance.new("UIStroke")
local UIStroke_4 = Instance.new("UIStroke")
local weapon = Instance.new("TextLabel")
local studs = Instance.new("TextLabel")
local TeleportButton = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UIStroke_5 = Instance.new("UIStroke")
local TeleportButton_2 = Instance.new("Frame")
local TextButton_2 = Instance.new("TextButton")
local UIStroke_6 = Instance.new("UIStroke")
local Bar = Instance.new("Frame")
local Title = Instance.new("TextLabel")

-- Properties:

TargetHud.Name = tostring(crypt.generatebytes(7))
TargetHud.Parent = gethui()
TargetHud.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TopBar.Name = tostring(crypt.generatebytes(7))
TopBar.Parent = TargetHud
TopBar.AnchorPoint = Vector2.new(0.5, 0.85)
TopBar.BackgroundColor3 = Color3.fromRGB(23, 26, 31)
TopBar.BorderColor3 = Color3.fromRGB(47, 47, 48)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(0.5, 0, 0.85, 0)
TopBar.Size = UDim2.new(0, 350, 0, 150)

Bg.Name = tostring(crypt.generatebytes(7))
Bg.Parent = TopBar
Bg.AnchorPoint = Vector2.new(0.5, 0.5)
Bg.BackgroundColor3 = Color3.fromRGB(31, 33, 41)
Bg.BorderColor3 = Color3.fromRGB(23, 26, 31)
Bg.BorderSizePixel = 0
Bg.Position = UDim2.new(0.5, 0, 0.62833333, 0)
Bg.Size = UDim2.new(0, 350, 0, 110)

Inside.Name = tostring(crypt.generatebytes(7))
Inside.Parent = Bg
Inside.BackgroundColor3 = Color3.fromRGB(22, 25, 30)
Inside.BorderColor3 = Color3.fromRGB(48, 48, 48)
Inside.Position = UDim2.new(0.0115715684, 0, 0.0454545468, 0)
Inside.Size = UDim2.new(0, 341, 0, 100)

HealthBar.Name = tostring(crypt.generatebytes(7))
HealthBar.Parent = Inside
HealthBar.AnchorPoint = Vector2.new(0.5, 0.5)
HealthBar.BackgroundColor3 = Color3.fromRGB(22, 25, 30)
HealthBar.BackgroundTransparency = 1.000
HealthBar.BorderColor3 = Color3.fromRGB(48, 48, 48)
HealthBar.BorderSizePixel = 0
HealthBar.ClipsDescendants = true
HealthBar.Position = UDim2.new(0.636363626, 0, 0.879999995, 0)
HealthBar.Size = UDim2.new(0, 233, 0, 8)

Base.Name = tostring(crypt.generatebytes(7))
Base.Parent = HealthBar
Base.AnchorPoint = Vector2.new(0.5, 0.5)
Base.BackgroundColor3 = Color3.fromRGB(22, 25, 30)
Base.BorderColor3 = Color3.fromRGB(48, 48, 48)
Base.BorderSizePixel = 0
Base.Position = UDim2.new(0.5, 0, 0.5, 0)
Base.Size = UDim2.new(1, 0, 1, 0)

Value.Name = tostring(crypt.generatebytes(7))
Value.Parent = Base
Value.BackgroundColor3 = Color3.fromRGB(158, 150, 222)
Value.BorderColor3 = Color3.fromRGB(0, 0, 0)
Value.BorderSizePixel = 0
Value.Size = UDim2.new(1, 0, 1, 0)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(185, 185, 185))} -- added
UIGradient.Parent = Value

UIStroke.Color = Color3.fromRGB(48, 48, 48)
UIStroke.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke.Parent = HealthBar

PfpBg.Name = tostring(crypt.generatebytes(7))
PfpBg.Parent = Inside
PfpBg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PfpBg.BorderColor3 = Color3.fromRGB(0, 0, 0)
PfpBg.BorderSizePixel = 0
PfpBg.Position = UDim2.new(0.0322580636, 0, 0.0700000003, 0)
PfpBg.Size = UDim2.new(0, 85, 0, 85)

UIStroke_2.Color = Color3.fromRGB(50, 50, 50)
UIStroke_2.Parent = PfpBg

PFP.Name = tostring(crypt.generatebytes(7))
PFP.Parent = PfpBg
PFP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PFP.BackgroundTransparency = 1.000
PFP.BorderColor3 = Color3.fromRGB(0, 0, 0)
PFP.BorderSizePixel = 0
PFP.Size = UDim2.new(1, 0, 1, 0)
PFP.Image = "rbxthumb://type=AvatarHeadShot&id=5236454848&w=420&h=420"

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(20, 20, 20)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(20, 20, 20))} -- changed
UIGradient_2.Parent = PfpBg

name.Name = tostring(crypt.generatebytes(7))
name.Parent = Inside
name.BackgroundColor3 = Color3.fromRGB(220, 220, 221)
name.BackgroundTransparency = 1.000
name.BorderColor3 = Color3.fromRGB(0, 0, 0)
name.BorderSizePixel = 0
name.Position = UDim2.new(0.299824387, 0, 0.0700000003, 0)
name.Size = UDim2.new(0, 150, 0, 22)
name.ZIndex = 2
name.Font = Enum.Font.SourceSans
name.Text = "display (name)"
name.TextColor3 = Color3.fromRGB(220, 220, 221)
name.TextSize = 12.000
name.TextXAlignment = Enum.TextXAlignment.Left

ArmorBar.Name = tostring(crypt.generatebytes(7))
ArmorBar.Parent = Inside
ArmorBar.AnchorPoint = Vector2.new(0.5, 0.5)
ArmorBar.BackgroundColor3 = Color3.fromRGB(22, 25, 30)
ArmorBar.BackgroundTransparency = 1.000
ArmorBar.BorderColor3 = Color3.fromRGB(48, 48, 48)
ArmorBar.BorderSizePixel = 0
ArmorBar.ClipsDescendants = true
ArmorBar.Position = UDim2.new(0.638999939, 0, 0.730000019, 0)
ArmorBar.Size = UDim2.new(0, 233, 0, 8)

Base_2.Name = tostring(crypt.generatebytes(7))
Base_2.Parent = ArmorBar
Base_2.AnchorPoint = Vector2.new(0.5, 0.5)
Base_2.BackgroundColor3 = Color3.fromRGB(22, 25, 30)
Base_2.BorderColor3 = Color3.fromRGB(48, 48, 48)
Base_2.BorderSizePixel = 0
Base_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Base_2.Size = UDim2.new(1, 0, 1, 0)

Value_2.Name = tostring(crypt.generatebytes(7))
Value_2.Parent = Base_2
Value_2.BackgroundColor3 = Color3.fromRGB(102, 184, 247)
Value_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Value_2.BorderSizePixel = 0
Value_2.Size = UDim2.new(1, 0, 1, 0)

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(185, 185, 185))} -- added
UIGradient_3.Parent = Value_2

UIStroke_3.Color = Color3.fromRGB(48, 48, 48)
UIStroke_3.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke_3.Parent = Base_2

UIStroke_4.Color = Color3.fromRGB(48, 48, 48)
UIStroke_4.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke_4.Parent = ArmorBar
UIStroke_4.Transparency = 1

weapon.Name = tostring(crypt.generatebytes(7))
weapon.Parent = Inside
weapon.BackgroundColor3 = Color3.fromRGB(220, 220, 221)
weapon.BackgroundTransparency = 1.000
weapon.BorderColor3 = Color3.fromRGB(0, 0, 0)
weapon.BorderSizePixel = 0
weapon.Position = UDim2.new(0.299824387, 0, 0.360000014, 0)
weapon.Size = UDim2.new(0, 150, 0, 22)
weapon.ZIndex = 2
weapon.Font = Enum.Font.SourceSans
weapon.Text = "tool: none"
weapon.TextColor3 = Color3.fromRGB(220, 220, 221)
weapon.TextSize = 12.000
weapon.TextXAlignment = Enum.TextXAlignment.Left

studs.Name = tostring(crypt.generatebytes(7))
studs.Parent = Inside
studs.BackgroundColor3 = Color3.fromRGB(220, 220, 221)
studs.BackgroundTransparency = 1.000
studs.BorderColor3 = Color3.fromRGB(0, 0, 0)
studs.BorderSizePixel = 0
studs.Position = UDim2.new(0.299824387, 0, 0.219999999, 0)
studs.Size = UDim2.new(0, 150, 0, 22)
studs.ZIndex = 2
studs.Font = Enum.Font.SourceSans
studs.Text = "123 studs"
studs.TextColor3 = Color3.fromRGB(220, 220, 221)
studs.TextSize = 12.000
studs.TextXAlignment = Enum.TextXAlignment.Left

TeleportButton.Name = tostring(crypt.generatebytes(7))
TeleportButton.Parent = Inside
TeleportButton.BackgroundColor3 = Color3.fromRGB(16, 21, 24)
TeleportButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton.BorderSizePixel = 0
TeleportButton.Position = UDim2.new(0.739707053, 0, 0.0700000003, 0)
TeleportButton.Size = UDim2.new(0, 81, 0, 22)

TextButton.Parent = TeleportButton
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Selectable = false
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Teleport"
TextButton.TextColor3 = Color3.fromRGB(75, 76, 76)
TextButton.TextSize = 14.000

UIStroke_5.Color = Color3.fromRGB(45, 46, 47)
UIStroke_5.Parent = TeleportButton

TeleportButton_2.Name = tostring(crypt.generatebytes(7))
TeleportButton_2.Parent = Inside
TeleportButton_2.BackgroundColor3 = Color3.fromRGB(16, 21, 24)
TeleportButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton_2.BorderSizePixel = 0
TeleportButton_2.Position = UDim2.new(0.739707053, 0, 0.360000014, 0)
TeleportButton_2.Size = UDim2.new(0, 81, 0, 22)

TextButton_2.Parent = TeleportButton_2
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Selectable = false
TextButton_2.Size = UDim2.new(1, 0, 1, 0)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Return"
TextButton_2.TextColor3 = Color3.fromRGB(75, 76, 76)
TextButton_2.TextSize = 14.000

UIStroke_6.Color = Color3.fromRGB(45, 46, 47)
UIStroke_6.Parent = TeleportButton_2

Bar.Name = tostring(crypt.generatebytes(7))
Bar.Parent = TopBar
Bar.AnchorPoint = Vector2.new(0.5, 0.5)
Bar.BackgroundColor3 = Color3.fromRGB(158, 150, 222)
Bar.BorderColor3 = Color3.fromRGB(23, 26, 31)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0.5, 0, 0.25333333, 0)
Bar.Size = UDim2.new(1, 0, 0, 2)

Title.Name = tostring(crypt.generatebytes(7))
Title.Parent = TopBar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.023, 0, 0, 0)
Title.Size = UDim2.new(0, 59, 0, 37)
Title.Font = Enum.Font.SourceSans
Title.Text = "Melatonin"
Title.TextColor3 = Color3.fromRGB(158, 150, 222)
Title.TextSize = 16.000
Title.TextXAlignment = Enum.TextXAlignment.Left

local juju = juju -- i hate type errors in vscode sorry
local create_connection = juju.create_connection
local create_notification = juju.create_notification
local run_service = cloneref(game:GetService("RunService"))
local tween_service = cloneref(game:GetService("TweenService"))
local players = cloneref(game:GetService("Players"))
local lplayer = players.LocalPlayer
local get_target = juju.get_ragebot_target
local lastPos = lplayer.Character.HumanoidRootPart.CFrame

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
        ["default"] = 0.85,
        ["prefix"] = "",
        ["suffix"] = " px",
        ["flag"] = "title_textbox_targetui",
        ["min"] = 0,
        ["max"] = 1
    }
})

local titleE = juju["create_element"]({
    ["name"] = "title"
}, {
    ["textbox"] = {
        ["default"] = "Melatonin",
        ["flag"] = "title_textbox_targetui"
    }
})

local color = juju["create_element"]({
    ["name"] = "color"
}, {
    ["colorpicker"] = {
        ["default_color"] = Color3.fromRGB(158, 150, 222),
        ["color_flag"] = "base_color_targetui",
        ["default_transparency"] = 0,
        ["transparency_flag"] = "USELESSFLAGOKSADPOKASDPOK"
    }
})

local armorBarColor = juju["create_element"]({
    ["name"] = "armor bar color"
}, {
    ["colorpicker"] = {
        ["default_color"] = Color3.fromRGB(102, 184, 247),
        ["color_flag"] = "armor_color_targetui",
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
    TopBar.Position = UDim2.new(0.5, 0, val, 0)
end)

juju["create_connection"](titleE["on_textbox_change"], function(val)
    if val ~= Title.Text then
        Title.Text = val
    end
end)

juju["create_connection"](color["on_color_change"], function(val)
    Bar.BackgroundColor3 = val
    Value.BackgroundColor3 = val
    Title.TextColor3 = val
end)

juju["create_connection"](armorBarColor["on_color_change"], function(val)
    Value_2.BackgroundColor3 = val
end)

local function update_target_gui()
    local target = get_target()

    if target and target.Character and target.Character:FindFirstChild("Humanoid") then
        local humanoid = target.Character.Humanoid
        local bodyEffects = target.Character:FindFirstChild("BodyEffects")

        local armorV = bodyEffects:FindFirstChild("Armor")

        local weaponV = target.Character:FindFirstChildOfClass("Tool")

        local distance = target.Character.HumanoidRootPart.Position -
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
        local distanceM = distance.Magnitude

        local health_ratio = math.clamp(humanoid.Health / humanoid.MaxHealth, 0, 1)
        local armor_ratio = math.clamp(armorV.Value / 130, 0, 1)

        if target.Name ~= target.DisplayName then
            local full = target.DisplayName .. " (@" .. target.Name .. ")"
            if string.len(full) > 30 then
                name.Text = string.sub(full, 1, 17) .. "..."
            else
                name.Text = full
            end
        else
            if string.len(target.Name) > 30 then
                name.Text = string.sub(target.Name, 1, 17) .. "..."
            else
                name.Text = target.Name
            end
        end

        studs.Text = math.floor(distanceM) .. " studs"

        if weaponV then
            weapon.Text = "tool: " .. weaponV.Name
        else
            if weapon.Text ~= "tool: none" then
                weapon.Text = "tool: none"
            end
        end

        tween_service:Create(Value, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
            Size = UDim2.new(health_ratio, 0, 1, 0)
        }):Play()

        tween_service:Create(Value_2, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
            Size = UDim2.new(armor_ratio, 0, 1, 0)
        }):Play()

        if armorV and armorV.Value > 0 then
            if UIStroke_4.Transparency == 1 then
                tween_service:Create(UIStroke_4, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                    Transparency = 0
                }):Play()
            end
        else
            if UIStroke_4.Transparency == 0 then
                tween_service:Create(UIStroke_4, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                    Transparency = 1
                }):Play()
            end
        end


        PFP.Image = string.format("rbxthumb://type=AvatarHeadShot&id=%d&w=420&h=420", target.UserId)
        if not TargetHud.Enabled then
            TargetHud.Enabled = true
        end
    else
        if TargetHud.Enabled then
            TargetHud.Enabled = false
        end
    end
end

create_connection(run_service.Heartbeat, function()
    update_target_gui()
end)

TextButton.MouseButton1Click:Connect(function()
    local target = get_target()
    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
        lastPos = lplayer.Character.HumanoidRootPart.CFrame
        local targetPosition = target.Character.HumanoidRootPart.CFrame
        local newPosition = targetPosition
        local character = lplayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
                character.HumanoidRootPart.CFrame = newPosition
        end
    end
end)

TextButton.MouseEnter:Connect(function()
    tween_service:Create(TextButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
        TextColor3 = Color3.fromRGB(255, 255, 255)
    }):Play()
end)

TextButton.MouseLeave:Connect(function()
    tween_service:Create(TextButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
        TextColor3 = Color3.fromRGB(76, 76, 76)
    }):Play()
end)

TextButton_2.MouseEnter:Connect(function()
    tween_service:Create(TextButton_2, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
        TextColor3 = Color3.fromRGB(255, 255, 255)
    }):Play()
end)

TextButton_2.MouseLeave:Connect(function()
    tween_service:Create(TextButton_2, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
        TextColor3 = Color3.fromRGB(76, 76, 76)
    }):Play()
end)

TextButton_2.MouseButton1Click:Connect(function()
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
    TargetHud:Destroy()
    for i = 1, 30 do
        print("shaq is so cool and hot")
        create_notification("shaq is so cool and hot mmmm meowww", 1, 2)
    end
end)
