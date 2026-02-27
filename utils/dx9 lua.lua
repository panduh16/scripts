-- i dont really know if this works or not i havent used in over a year, if it says look at i kinda assume it doesn't work
local dx9 = {}
dx9.__index = dx9

local consoleShown = false

function dx9.new()
    local self = setmetatable({}, dx9)
    return self
end

-- drawing

function dx9.DrawLine(point1, point2, color)
    local line = Drawing.new("Line")
    line.Visible = true
    line.From = Vector2.new(point1[1], point1[2])
    line.To = Vector2.new(point2[1], point2[2])
    line.Color = Color3.fromRGB(color[1], color[2], color[3])
    line.Thickness = 1
    line.Transparency = 1
    return line
end

function dx9.DrawString(position, color, text)
    local textObj = Drawing.new("Text")
    textObj.Visible = true
    textObj.Position = Vector2.new(position[1], position[2])
    textObj.Color = Color3.fromRGB(color[1], color[2], color[3])
    textObj.Text = text
    textObj.Size = 13
    textObj.Center = false
    textObj.Outline = true
    textObj.Transparency = 1
    return textObj
end

function dx9.DrawCircle(position, color, radius)
    local circle = Drawing.new("Circle")
    circle.Visible = true
    circle.Position = Vector2.new(position[1], position[2])
    circle.Color = Color3.fromRGB(color[1], color[2], color[3])
    circle.Radius = radius
    circle.Thickness = 1
    circle.Transparency = 1
    circle.NumSides = 30
    circle.Filled = false
    return circle
end

function dx9.DrawBox(pos1, pos2, color)
    local box = Drawing.new("Square")
    box.Visible = true
    box.Position = Vector2.new(pos1[1], pos1[2])
    box.Size = Vector2.new(pos2[1] - pos1[1], pos2[2] - pos1[2])
    box.Color = Color3.fromRGB(color[1], color[2], color[3])
    box.Thickness = 1
    box.Transparency = 1
    box.Filled = false
    return box
end

function dx9.DrawFilledBox(pos1, pos2, color)
    local box = Drawing.new("Square")
    box.Visible = true
    box.Position = Vector2.new(pos1[1], pos1[2])
    box.Size = Vector2.new(pos2[1] - pos1[1], pos2[2] - pos1[2])
    box.Color = Color3.fromRGB(color[1], color[2], color[3])
    box.Thickness = 1
    box.Transparency = 1
    box.Filled = true
    return box
end

function dx9.Box3d(vertices, color)
    local lines = {}
    for i = 1, 8 do
        for j = i + 1, 8 do
            if vertices[i] and vertices[j] then
                local line = Drawing.new("Line")
                line.Visible = true
                line.From = Vector2.new(vertices[i][1], vertices[i][2])
                line.To = Vector2.new(vertices[j][1], vertices[j][2])
                line.Color = Color3.fromRGB(color[1], color[2], color[3])
                line.Thickness = 1
                line.Transparency = 1
                table.insert(lines, line)
            end
        end
    end
    return lines
end

-- datamodel
function dx9.GetDatamodel()
    return game
end

-- find functions

function dx9.FindFirstChild(instance, childName)
    for _, child in ipairs(instance:GetChildren()) do
        if child.Name == childName then
            return child
        end
    end
    return nil
end

function dx9.FindFirstChildOfClass(instance, className)
    for _, child in ipairs(instance:GetChildren()) do
        if child.ClassName == className then
            return child
        end
    end
    return nil
end

function dx9.FindFirstDescendant(instance, childName)
    for _, child in ipairs(instance:GetDescendants()) do
        if child.Name == childName then
            return child
        end
    end
    return nil
end

-- general

function dx9.ClearConsole()
    rconsoleclear()
end

function dx9.CalcTextWidth(text)
    local textObj = Drawing.new("Text")
    textObj.Text = text
    return textObj.TextBounds.X
end

function dx9.MatrixToEulers(CFrame)
    local x, y, z = CFrame:ToEulerAnglesXYZ()
    return math.deg(x), math.deg(y), math.deg(z)
end

-- look into size
function dx9.Size(Vector)
    return math.sqrt(Vector.X^2 + Vector.Y^2 + Vector.Z^2)
end

function dx9.ShowConsole(show)
    if show then
        rconsolecreate()
        consoleShown = true
    else
        rconsoledestroy()
        consoleShown = false
    end
end

function dx9.Teleport(character, CFrame)
    character:SetPrimaryPartCFrame(CFrame)
end

function dx9.WorldToScreen(position)
    return camera:WorldToViewportPoint(position)
end

-- get
function dx9.Get(url)
    return dx9.GetDatamodel():HttpGet(url)
end

function dx9.GetCFrame(BasePart)
    return BasePart.CFrame
end

-- look at
function dx9.GetAllParts(object)
    return object:GetDescendants()
end

function dx9.GetName(instance)
    return instance.Name
end

function dx9.GetChildren(instance)
    return instance:GetChildren()
end

function dx9.GetPosition(instance)
    return instance.Position
end

function dx9.GetParent(instance)
    return instance.Parent
end

function dx9.GetTeam(player_instance)
    return player_instance.Team
end

function dx9.GetTeamColour(player_instance)
    return player_instance.Team.TeamColor.Color
end

function dx9.GetCharacter(player_instance)
    return player_instance.Character
end

-- look at
function dx9.GetAdornee(pointer)
    return pointer.Adornee
end

function dx9.GetType(instance)
    return instance.ClassName
end

-- look at
function dx9.GetTarget()
    local player = dx9.GetDatamodel():GetService("Players").LocalPlayer
    local mouse = player:GetMouse()
    return mouse.Target
end

function dx9.GetImageLabelPosition(pointer)
    local position = pointer.Position
    return {position.X, position.Y}
end

function dx9.GetMouse()
    local mouse = dx9.GetDatamodel():GetService("Players").LocalPlayer:GetMouse()
    return {
        x = mouse.X,
        y = mouse.Y
    }
end

function dx9.GetNumValue(pointer)
    return pointer.Value
end

-- look at
function dx9.GetKey()
    local keys = dx9.GetDatamodel():GetService("UserInputService"):GetKeysPressed()
    if #keys > 0 then
        local keyCode = keys[1].KeyCode.Name
        return "[" .. keyCode .. "]"
    end
    return ""
end

-- add lock function stuff later or never
-- such as GetLocked()
-- GetAimbotValue()

function dx9.GetStringValue(pointer)
    return pointer.Value
end

function dx9.GetBoolValue(pointer)
    return pointer.Value
end

function dx9.GetVelocity(instance)
    return instance.Velocity
end

function dx9.GetMaxHealth(humanoid)
    return humanoid.MaxHealth
end

-- look at
function dx9.GetKeys()
    local keyHistory = {}
    local UIS = dx9.GetDatamodel():GetService("UserInputService")
    
    UIS.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Keyboard then
            table.insert(keyHistory, 1, input.KeyCode.Name)
            if #keyHistory > 5 then
                table.remove(keyHistory, 6)
            end
        end
    end)
    
    return keyHistory
end

function dx9.GetHealth(humanoid)
    return humanoid.Health
end

-- look at heavily.. -- https://docs.cultofintellect.com/DX9WARE/Lua/GetFunctions#getping
function dx9.GetPing()
    local player = dx9.GetDatamodel():GetService("Players").LocalPlayer
    local info = {
        name = player.Name,
        distance = 0, 
        health = player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health or 0
    }
    local position = player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character.HumanoidRootPart.Position or Vector3.new(0,0,0)
    
    return {
        Value = dx9.GetDatamodel():GetService("Stats").Network.ServerStatsItem["Data Ping"].Value,
        Position = {x = position.X, y = position.Y, z = position.Z},
        Info = info
    }
end

-- look at heavily as well just below one above this
function dx9.get_info(pointer, string)
    local player = dx9.GetDatamodel():GetService("Players"):FindFirstChild(pointer)
    if player then
        local character = player.Character
        if character then
            local part = character:FindFirstChild(string)
            if part then
                local position = part.Position
                local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                local distance = 0
                
                if humanoidRootPart then
                    local localPlayer = dx9.GetDatamodel():GetService("Players").LocalPlayer
                    if localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        distance = (humanoidRootPart.Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude
                    end
                end

                return {
                    Position = {x = position.X, y = position.Y, z = position.Z},
                    Info = {
                        name = player.Name,
                        distance = distance
                    }
                }
            end
        end
    end
    return nil
end

-- look at all of info bro 😭
function dx9.get_player(player_name)
    local player = dx9.GetDatamodel():GetService("Players"):FindFirstChild(player_name)
    if player then
        local character = player.Character
        local position = Vector3.new(0,0,0)
        local health = 0
        local distance = 0

        if character then
            local humanoid = character:FindFirstChild("Humanoid")
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            
            if humanoid then
                health = humanoid.Health
            end
            
            if rootPart then
                position = rootPart.Position
                local localPlayer = dx9.GetDatamodel():GetService("Players").LocalPlayer
                if localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    distance = (rootPart.Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude
                end
            end
        end

        return {
            Position = {
                x = position.X,
                y = position.Y,
                z = position.Z
            },
            Info = {
                name = player.Name,
                distance = distance,
                health = health
            }
        }
    end
    return nil
end

function dx9.get_localplayer()
    local player = dx9.GetDatamodel():GetService("Players").LocalPlayer
    local character = player.Character
    local position = Vector3.new(0,0,0)
    local health = 0
    local distance = 0

    if character then
        local humanoid = character:FindFirstChild("Humanoid")
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        
        if humanoid then
            health = humanoid.Health
        end
        
        if rootPart then
            position = rootPart.Position
        end
    end

    return {
        Position = {
            x = position.X,
            y = position.Y,
            z = position.Z
        },
        Info = {
            name = player.Name,
            distance = distance,
            health = health
        }
    }
end

-- mouse stuff

function dx9.isLeftClick()
    return dx9.GetDatamodel():GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
end

function dx9.isRightClick()
    return dx9.GetDatamodel():GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
end

-- look at these 2 above ^

function dx9.isLeftClickHeld()
    return dx9.GetDatamodel():GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
end

function dx9.isRightClickHeld()
    return dx9.GetDatamodel():GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
end

function dx9.MouseMove(position)
    mousemoverel(position[1], position[2])
end

function dx9.Mouse1Click()
    mouse1click()
end

function dx9.Mouse2Click()
    mouse2click()
end

local originalPrint = print
print = function(...)
    local args = {...}
    for i in pairs(args) do
        args[i] = tostring(v)
    end
    if consoleShown then
        rconsoleprint(table.concat(args, " ") .. "\n")
    else
        originalPrint(table.unpack(args))
    end
end

local function test()--loadstring(dx9.Get("https://raw.githubusercontent.com/soupg/DXLib/main/main.lua"))()
    --dxl.ShowConsole()
    --<< Invis check by Davey#3700 (hit me up if you know how to get player names cus it keeps crashing my dx9)
    local game = dx9.GetDatamodel()
    local ws = dx9.FindFirstChildOfClass(game, "Workspace")
    for i,v in pairs(dx9.GetChildren(ws)) do
        local player = dx9.FindFirstChild(v, "Head")
        if player then
        else
            print("Player check failed")
        end
        local face = dx9.FindFirstChildOfClass(player, "Decal")
        if face then
            if dx9.GetParent(face) ~= 0 then
                print(dx9.GetParent(face))
                local realface = dx9.GetParent(face)
                print(dx9.GetName(realface))
                local pos = dx9.GetPosition(realface)
                local wts = dx9.WorldToScreen({pos.x,pos.y,pos.z})
                dx9.DrawString({wts.x, wts.y}, {255,255,255}, "Visible player")
            else
                local playerpos = dx9.GetPosition(player)
                local playerwts = dx9.WorldToScreen({playerpos.x,playerpos.y,playerpos.z})
                dx9.DrawString({playerwts.x, playerwts.y}, {255,255,255}, "Invisible player")
            end
        end
    end
end

test()

return dx9
