-- bypass anticheat
local oldACDTHook
oldACDTHook = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
    local callMethod = getnamecallmethod()
    if callMethod == 'FireServer' and self.Name == 'ACDTResponse' then
        return nil
    end
    return oldACDTHook(self, ...)
end))

-- wild west
local Heartbeat = game:GetService("RunService").Heartbeat
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/1-16AM/xena/refs/heads/main/guis/v1/ui.lua"))()

local window = UI.new({
    title = "xena - wild west",  
    size = UDim2.new(0, 400, 0, 500),
    position = UDim2.new(0.5, 0, 0.5, 0) 
})

local movementTab = window:addTab("Movement")
local combatTab = window:addTab("Combat")
local visualsTab = window:addTab("Visuals")
local miscTab = window:addTab("Misc")
local settingsTab = window:addTab("Settings")


local walkspeedGroupbox = movementTab:addGroupbox("Walkspeed")

local walkspeedToggle = walkspeedGroupbox:addToggle({
    Name = "Walkspeed Toggle",
    CurrentValue = false,
    Callback = function(Value)
        if not Value then
            if game:GetService("Players").LocalPlayer.Character and
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
            end
        end
    end,
    CurrentKeybind = "NONE",
    HoldToInteract = false
})

local walkspeedSlider = walkspeedGroupbox:addSlider({
    Name = "Walkspeed Slider",
    Range = {0, 500},
    Increment = 1,
    CurrentValue = 16,
    Callback = function(Value)
    end
})

local walkspeedDropdown = walkspeedGroupbox:addDropdown({
    Options = {"WalkSpeed", "Velocity", "CFrame"},
    Default = "WalkSpeed",
    Callback = function(Value)
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity.Y, 0)
    end
}, nil, "WalkspeedMethod")

local jumpPowerGroupbox = movementTab:addGroupbox({
    Title = "JumpPower"
})

local jumpPowerToggle = jumpPowerGroupbox:addToggle({
    Name = "JumpPower Toggle",
    CurrentValue = false,
    Callback = function(Value)
    end,
    CurrentKeybind = "NONE",
    HoldToInteract = false
})

local jumpPowerSlider = jumpPowerGroupbox:addSlider({
    Name = "JumpPower Slider",
    Range = {0, 500},
    Increment = 1,
    CurrentValue = 50,
    Callback = function(Value)
    end
})

local spinbotstate = {
    connection = nil,
    speed = 180
}

local spinBotGroupbox = movementTab:addGroupbox({
    Title = "SpinBot"
})

spinBotGroupbox:addToggle({
    Name = "SpinBot Toggle",
    CurrentValue = false,
    Callback = function(Value)
        if Value then
            spinbotstate.connection = RunService.Heartbeat:Connect(function()
            local character = game:GetService("Players").LocalPlayer.Character
            if character then
                local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(spinbotstate.speed), 0)
                end
            end
            end)
        else
            if spinbotstate.connection then
                spinbotstate.connection:Disconnect()
                spinbotstate.connection = nil
            end
        end
    end,
    CurrentKeybind = "NONE",
})


spinBotGroupbox:addSlider({
    Name = "SpinSpeed Slider",
    Range = {0, 180},
    Increment = 1,
    CurrentValue = 180,
    Callback = function(Value)
        spinbotstate.speed = Value
    end
})
local flystate = {
    connection = nil,
    speed = 3,
    flying = false,
    flypos = nil
}

local flyGroupbox = movementTab:addGroupbox({
    Title = "Fly" 
})

flyGroupbox:addToggle({
    Name = "Fly Toggle",
    CurrentValue = false,
    Callback = function(Value)
        if Value then
            flystate.flying = true
            local character = game:GetService("Players").LocalPlayer.Character
            if character then
                local humanoid = character:FindFirstChild("Humanoid")
                if humanoid and humanoid.SeatPart then
                    flystate.flypos = humanoid.SeatPart.CFrame
                elseif character:FindFirstChild("HumanoidRootPart") then
                    flystate.flypos = character.HumanoidRootPart.CFrame
                end
            end

            flystate.connection = RunService.Heartbeat:Connect(function()
                local character = game:GetService("Players").LocalPlayer.Character
                if not character then
                    flystate.flying = false
                    flystate.flypos = nil
                    if flystate.connection then
                        flystate.connection:Disconnect()
                        flystate.connection = nil
                    end
                    return
                end

                local humanoid = character:FindFirstChild("Humanoid")
                local targetPart
                if humanoid and humanoid.SeatPart then
                    targetPart = humanoid.SeatPart
                elseif character:FindFirstChild("HumanoidRootPart") then
                    targetPart = character.HumanoidRootPart
                else
                    return
                end

                local camera = workspace.CurrentCamera

                local forward = UserInputService:IsKeyDown(Enum.KeyCode.W) and camera.CFrame.LookVector or Vector3.new()
                local backward = UserInputService:IsKeyDown(Enum.KeyCode.S) and -camera.CFrame.LookVector or Vector3.new()
                local right = UserInputService:IsKeyDown(Enum.KeyCode.D) and camera.CFrame.RightVector or Vector3.new()
                local left = UserInputService:IsKeyDown(Enum.KeyCode.A) and -camera.CFrame.RightVector or Vector3.new()
                local up = UserInputService:IsKeyDown(Enum.KeyCode.E) and Vector3.new(0, 1, 0) or Vector3.new()
                local down = UserInputService:IsKeyDown(Enum.KeyCode.Q) and Vector3.new(0, -1, 0) or Vector3.new()

                local movement = (forward + backward + right + left + up + down)

                if movement.Magnitude > 0 then
                    movement = movement.Unit
                    flystate.flypos = CFrame.new(flystate.flypos.Position + movement * flystate.speed) * 
                                    CFrame.Angles(0, targetPart.CFrame:ToEulerAnglesYXZ(), 0)
                else
                    flystate.flypos = CFrame.new(flystate.flypos.Position) * 
                                    CFrame.Angles(0, targetPart.CFrame:ToEulerAnglesYXZ(), 0)
                end

                targetPart.CFrame = flystate.flypos
            end)
        else
            flystate.flying = false
            flystate.flypos = nil
            if flystate.connection then
                flystate.connection:Disconnect()
                flystate.connection = nil
            end
        end
    end,
    CurrentKeybind = "NONE",
})

flyGroupbox:addSlider({
    Name = "FlySpeed Slider",
    Range = {0, 20},
    Increment = 1,
    CurrentValue = 3,
    Callback = function(Value)
        flystate.speed = Value
    end
})


local staminaGroupbox = movementTab:addGroupbox("Stamina")

local toggleStamina = staminaGroupbox:addToggle({
    Name = "No Stamina Loss",
    CurrentValue = false,
    Callback = function(Value)
        if Value then
            local oldStaminaHook
            oldStaminaHook = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
                local callMethod = getnamecallmethod()
                if callMethod == 'FireServer' and self.Name == 'LowerStamina' then
                    local args = {...}
                    args[1] = 0
                    return self.FireServer(self, unpack(args))
                end
                return oldStaminaHook(self, ...)
            end))
        else
            local oldStaminaHook
            oldStaminaHook = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
                local callMethod = getnamecallmethod()
                if callMethod == 'FireServer' and self.Name == 'LowerStamina' then
                    local args = {...}
                    return self.FireServer(self, unpack(args))
                end
                return oldStaminaHook(self, ...)
            end))
        end
    end,
    CurrentKeybind = "NONE",
    HoldToInteract = false
})

-- miscTab

local NoHealthLossToggle = miscTab:addToggle({
    Name = "No Health Loss",
    CurrentValue = false,
    Callback = function(Value)
        if Value then
            local oldHealthHook
            oldHealthHook = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
                local args = {...}
                local callMethod = getnamecallmethod()
                if callMethod == 'FireServer' and self.Name == 'DamageSelf' then
                    return nil
                end
                return oldHealthHook(self, ...)
            end))
        else
            local oldHealthHook
            oldHealthHook = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
                local args = {...}
                local callMethod = getnamecallmethod()
                if callMethod == 'FireServer' and self.Name == 'DamageSelf' then
                    return self.FireServer(self, unpack(args))
                end
                return oldHealthHook(self, ...)
            end))
        end
    end,
    CurrentKeybind = "NONE",
    HoldToInteract = false
})

local NoRagdollToggle = miscTab:addToggle({
    Name = "No Ragdoll",
    CurrentValue = false,
    Callback = function(Value)
        if Value then
            local oldRagdollHook
            oldRagdollHook = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
                local callMethod = getnamecallmethod()
                if callMethod == 'FireServer' and self.Name == 'EnterRagdoll' then
                    return nil
                end
                return oldRagdollHook(self, ...)
            end))
        else
            local oldRagdollHook
            oldRagdollHook = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
                local callMethod = getnamecallmethod()
                if callMethod == 'FireServer' and self.Name == 'EnterRagdoll' then
                    local args = {...}
                    return self.FireServer(self, unpack(args))
                end
                return oldRagdollHook(self, ...)
            end))
        end
    end,
    CurrentKeybind = "NONE",
    HoldToInteract = false
})

local DontLetOthersSpectateYouToggle = miscTab:addToggle({
    Name = "Dont Let Others Spectate You",
    CurrentValue = false,
    Callback = function(Value)
        if Value then
            local oldSpectateHook
            oldSpectateHook = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
                local callMethod = getnamecallmethod()
                if callMethod == 'FireServer' and self.Name == 'CamPosReplicate' then
                    local args = {...}
                    args[1] = Vector3.new(9999, 9999, 9999)
                    return self.FireServer(self, unpack(args))
                end
                return oldSpectateHook(self, ...)
            end))
        else
            local oldSpectateHook
            oldSpectateHook = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
                local callMethod = getnamecallmethod()
                if callMethod == 'FireServer' and self.Name == 'CamPosReplicate' then
                    local args = {...}
                    return self.FireServer(self, unpack(args))
                end
                return oldSpectateHook(self, ...)
            end))
        end
    end
})

-- settings

settingsTab:addKeybind({
    Name = "toggle UI",
    CurrentKeybind = "RightShift",
    Callback = function()
        ui:toggle()
    end,
    HoldToInteract = false
})


RunService.Heartbeat:Connect(function()
    if walkspeedToggle and walkspeedSlider and walkspeedToggle.CurrentValue then
        local character = game:GetService("Players").LocalPlayer.Character
        if character and character:FindFirstChild("Humanoid") then
            local currentMethod = walkspeedDropdown and walkspeedDropdown.getValue and walkspeedDropdown:getValue()
            
            if currentMethod then
                
                if currentMethod == "WalkSpeed" then
                    character.Humanoid.WalkSpeed = walkspeedSlider.CurrentValue
                elseif currentMethod == "Velocity" then
                    local root = character:FindFirstChild("HumanoidRootPart")
                    if root then
                        local moveDirection = character.Humanoid.MoveDirection
                        root.AssemblyLinearVelocity = (moveDirection * walkspeedSlider.CurrentValue) + Vector3.new(0, root.AssemblyLinearVelocity.Y, 0)
                    end
                elseif currentMethod == "CFrame" then
                    local root = character:FindFirstChild("HumanoidRootPart")
                    if root then
                        local moveDirection = character.Humanoid.MoveDirection
                        local dt = RunService.Heartbeat:Wait()
                        local dest = (moveDirection * math.max(walkspeedSlider.CurrentValue - character.Humanoid.WalkSpeed, 0) * dt)
                        
                        local rayParams = RaycastParams.new()
                        rayParams.FilterDescendantsInstances = {character, workspace.CurrentCamera}
                        rayParams.FilterType = Enum.RaycastFilterType.Blacklist
                        rayParams.CollisionGroup = root.CollisionGroup
                        
                        local ray = workspace:Raycast(root.Position, dest, rayParams)
                        if ray then
                            dest = ((ray.Position + ray.Normal) - root.Position)
                        end
                        
                        root.CFrame = root.CFrame + dest
                    end
                end
            end
        end
    end

    if jumpPowerToggle and jumpPowerSlider then
        if jumpPowerToggle.CurrentValue then
            local character = game:GetService("Players").LocalPlayer.Character
            if character and character:FindFirstChild("Humanoid") then
                character.Humanoid.JumpPower = jumpPowerSlider.CurrentValue
            end
        end
    end
end)
