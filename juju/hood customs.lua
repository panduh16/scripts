local juju = juju -- avoid type errors
local create_notification = juju.create_notification
local players = cloneref(game:GetService("Players"))
local replicatedstorage = cloneref(game:GetService("ReplicatedStorage"))
local aimviewer = replicatedstorage.AIMVIEWER_REQUESTS
local lplayer = players.LocalPlayer

local char = lplayer.Character
local root = char.HumanoidRootPart

juju["create_connection"](lplayer["CharacterAdded"], function()
    char = lplayer.Character
    root = char:WaitForChild("HumanoidRootPart")
end)

local notify_on_aim_view = false

local function who_is_aim_viewing_me()
    local isSomeone = false
    for _, child in ipairs(aimviewer:GetChildren()) do
        if child.Name == lplayer.Name then
            create_notification(child.Value .. " is aim viewing you", 1, 3)
            isSomeone = true
        end
    end
    if isSomeone == false then
        create_notification("nobody is aim viewing you", 3, 3)
    end
end

local anti_mod = false
local anti_mod_modeV = "kick"
local anti_mod_group = "checkmarks"

local fake_position = juju["find_element"]("anti", "fake position")
local underground = juju["find_element"]("anti", "hide underground")
local tp_1v1_safety = false

local grab_snowball = juju["create_element"]({
    ["name"] = "grab snowball"
}, {
    ["button"] = {
        ["confirmation"] = false
    }
})

juju["create_connection"](grab_snowball["on_clicked"], function()
    game:GetService("ReplicatedStorage").MainEvent:FireServer("DoSnowballInteraction")
end)

local muscles_label = juju["create_element"]({
    ["name"] = "muscles"
}, {})

local muscles_settings = muscles_label:create_settings()

local minimum_muscles = muscles_settings:create_element({
    ["name"] = "minimum"
}, {
    ["button"] = {
        ["confirmation"] = false
    }
})

local maximum_muscles = muscles_settings:create_element({
    ["name"] = "maximum"
}, {
    ["button"] = {
        ["confirmation"] = false
    }
})

juju["create_connection"](minimum_muscles["on_clicked"], function()
    game:GetService("ReplicatedStorage").MainEvent:FireServer(table.unpack({
        [1] = "ChangeMuscleInformation",
        [2] = 0
    }))
end)

juju["create_connection"](maximum_muscles["on_clicked"], function()
    game:GetService("ReplicatedStorage").MainEvent:FireServer(table.unpack({
        [1] = "ChangeMuscleInformation",
        [2] = 30000
    }))
end)

local device_types = juju["create_element"]({
    ["name"] = "device type"
}, {})

local device_types_settings = device_types:create_settings()

local mobile = device_types_settings:create_element({
    ["name"] = "mobile"
}, {
    ["button"] = {
        ["confirmation"] = false
    }
})

local console = device_types_settings:create_element({
    ["name"] = "console"
}, {
    ["button"] = {
        ["confirmation"] = false
    }
})

juju["create_connection"](mobile["on_clicked"], function()
    game:GetService("ReplicatedStorage").MainEvent:FireServer("IS_MOBILE")
end)

juju["create_connection"](console["on_clicked"], function()
    game:GetService("ReplicatedStorage").MainEvent:FireServer("IS_CONSOLE")
end)

local aim_view_label = juju["create_element"]({
    ["name"] = "aim view"
}, {})

local aim_view_settings = aim_view_label:create_settings()

local who_is_aim_viewing_me_button = aim_view_settings:create_element({
    ["name"] = "who is aim viewing me"
}, {
    ["button"] = {
        ["confirmation"] = false
    }
})

local notify_on_aim_view_toggle = aim_view_settings:create_element({
    ["name"] = "notify on aim view"
}, {
    ["toggle"] = {
        ["default"] = false,
        ["flag"] = "notify_on_aim_view"
    }
})

juju["create_connection"](who_is_aim_viewing_me_button["on_clicked"], function()
    who_is_aim_viewing_me()
end)

juju["create_connection"](notify_on_aim_view_toggle["on_toggle_change"], function(val)
    notify_on_aim_view = val
    if val == true then
        who_is_aim_viewing_me()
    end
end)

juju["create_connection"](aimviewer["ChildAdded"], function(child)
    if notify_on_aim_view then
        if child.Name == lplayer.Name then
            create_notification(child.Value .. " is aim viewing you", 1, 3)
        end
    end
end)

local anti_mod_label = juju["create_element"]({
    ["name"] = "anti mod"
}, {})

local anti_mod_settings = anti_mod_label:create_settings()

local anti_mod_toggle = anti_mod_settings:create_element({
    ["name"] = "anti mod"
}, {
    ["toggle"] = {
        ["default"] = false,
        ["flag"] = "anti_mod_toggle"
    }
})

local anti_mod_mode = anti_mod_settings:create_element({
    ["name"] = "anti mod mode"
}, {
    ["dropdown"] = {
        ["default"] = {"kick"},
        ["options"] = {"notify", "kick"},
        ["requires_one"] = true,
        ["multi"] = false,
        ["flag"] = "anti_mod_mode"
    }
})

local anti_mod_group_dropdown = anti_mod_settings:create_element({
    ["name"] = "anti mod group"
}, {
    ["dropdown"] = {
        ["default"] = {"checkmarks"},
        ["options"] = {"mods", "checkmarks"},
        ["requires_one"] = true,
        ["multi"] = false,
        ["flag"] = "anti_mod_group"
    }
})

juju["create_connection"](anti_mod_toggle["on_toggle_change"], function(val)
    anti_mod = val
    if val == true then
        for _, player in players:GetPlayers() do
            if anti_mod_group == "checkmarks" then
                if player:IsInGroup(33214680) then
                    if anti_mod_modeV == "kick" then
                        lplayer:Kick(player.Name .. " is a checkmark")
                    else
                        create_notification(player.Name .. " (" .. player.DisplayName .. ") is a checkmark", 3, 3)
                    end
                end
            else
                if player:IsInGroup(34199407) then
                    if anti_mod_modeV == "kick" then
                        lplayer:Kick(player.Name .. " is a mod")
                    else
                        create_notification(player.Name .. " (" .. player.DisplayName .. ") is a mod", 3, 3)
                    end
                end
            end
        end
    end
end)

juju["create_connection"](anti_mod_mode["on_dropdown_change"], function(val)
    anti_mod_modeV = val[1]
    if anti_mod then
        for _, player in players:GetPlayers() do
            if anti_mod_group == "checkmarks" then
                if player:IsInGroup(33214680) then
                    if anti_mod_modeV == "kick" then
                        lplayer:Kick(player.Name .. " is a checkmark")
                    else
                        create_notification(player.Name .. " (" .. player.DisplayName .. ") is a checkmark", 3, 3)
                    end
                end
            else
                if player:IsInGroup(34199407) then
                    if anti_mod_modeV == "kick" then
                        lplayer:Kick(player.Name .. " is a mod")
                    else
                        create_notification(player.Name .. " (" .. player.DisplayName .. ") is a mod", 3, 3)
                    end
                end
            end
        end
    end
end)

juju["create_connection"](anti_mod_group_dropdown["on_dropdown_change"], function(val)
    anti_mod_group = val[1]
    if anti_mod then
        for _, player in players:GetPlayers() do
            if anti_mod_group == "checkmarks" then
                if player:IsInGroup(33214680) then
                    if anti_mod_modeV == "kick" then
                        lplayer:Kick(player.Name .. " is a checkmark")
                    else
                        create_notification(player.Name .. " (" .. player.DisplayName .. ") is a checkmark", 3, 3)
                    end
                end
            else
                if player:IsInGroup(34199407) then
                    if anti_mod_modeV == "kick" then
                        lplayer:Kick(player.Name .. " is a mod")
                    else
                        create_notification(player.Name .. " (" .. player.DisplayName .. ") is a mod", 3, 3)
                    end
                end
            end
        end
    end
end)

juju["create_connection"](players["PlayerAdded"], function(player)
    if anti_mod then
        if player:IsInGroup(33214680) then
            if anti_mod_modeV == "kick" then
                lplayer:Kick(player.Name .. " is a mod")
            else
                create_notification(player.Name .. " (" .. player.DisplayName .. ") is a mod", 3, 3)
            end
        end
    end
end)

local tp_safety = juju["create_element"]({
    ["name"] = "desync tp safety"
}, {})

local tp_safety_settings = tp_safety:create_settings()

local tpup200desync = tp_safety_settings:create_element({
    ["name"] = "tp down 200 and then desync"
}, {
    ["button"] = {
        ["confirmation"] = false
    }
})

local offakeposandunder = tp_safety_settings:create_element({
    ["name"] = "turn off fake pos and underground"
}, {
    ["button"] = {
        ["confirmation"] = false
    }
})

juju["create_connection"](offakeposandunder["on_clicked"], function()
    fake_position:set_toggle(false)
end)

juju["create_connection"](tpup200desync["on_clicked"], function()
    juju.create_notification("dont shoot", 2, 3)
    local pos = root.CFrame
    root.CFrame = pos + Vector3.new(0,-200,0)
    local start_time = tick()
    local teleported_once = false
    fake_position:set_toggle(false)
    while tick() - start_time < 1 do
        root.CFrame = pos + Vector3.new(0,-200,0)
        if not teleported_once then
            fake_position:set_toggle(true)
        end
        teleported_once = true
        task.wait()
    end
    root.CFrame = pos
    juju.create_notification("u can now shoot", 2, 3)
end)

local tp_safety_toggle = tp_safety_settings:create_element({
    ["name"] = "1v1 safely"
}, {
    ["toggle"] = {
        ["default"] = false,
        ["flag"] = "1v1_safely_toggle"
    }
})

juju["create_connection"](tp_safety_toggle["on_toggle_change"], function(val)
    tp_1v1_safety = val
end)

juju["create_connection"](char["ChildAdded"], function(child)
    if tp_1v1_safety then
        if not lplayer.Backpack:FindFirstChildOfClass("Tool") then
            fake_position:set_toggle(false)
            underground:set_toggle(false)
            return
        endeturn
        end
        if child.Name == "ForceField" then
            local tool = char:FindFirstChildOfClass("Tool")
            if tool then
                tool.Parent = lplayer.Backpack
            end
            local pos = root.CFrame
            local targetpos = root.CFrame + Vector3.new(0, -100, 0)
            local start_time = tick()
            local teleported_once = false
            fake_position:set_toggle(false)
            while tick() - start_time < 1 do
                root.CFrame = targetpos
                if not teleported_once then
                    fake_position:set_toggle(true)
                end
                teleported_once = true
                task.wait()
            end
            root.CFrame = pos
            task.wait(1)
            if tool then
                tool.Parent = char
            end
        end
    end
end)

juju["create_connection"](lplayer["CharacterAdded"], function(newchar)
    char = newchar
    if tp_1v1_safety then
        if not lplayer:FindFirstChildOfClass("Tool") then
            fake_position:set_toggle(false)
        end
    end

    juju["create_connection"](char["ChildAdded"], function(child)
        if tp_1v1_safety then
            if not lplayer.Backpack:FindFirstChildOfClass("Tool") then
                fake_position:set_toggle(false)
                underground:set_toggle(false)
                return
            end
            if child.Name == "ForceField" then
                local tool = char:FindFirstChildOfClass("Tool")
                if tool then
                    tool.Parent = lplayer.Backpack
                end
                local pos = root.CFrame
                local targetpos = root.CFrame + Vector3.new(0, -100, 0)
                local start_time = tick()
                local teleported_once = false
                fake_position:set_toggle(false)
                while tick() - start_time < 1 do
                    root.CFrame = targetpos
                    if not teleported_once then
                        fake_position:set_toggle(true)
                    end
                    teleported_once = true
                    task.wait()
                end
                root.CFrame = pos
                task.wait(1)
                if tool then
                    tool.Parent = char
                end
            end
        end
    end)
end)

for i = 1, 30 do
    print("shaq is so cool and hot")
    create_notification("shaq is so cool and hot mmmm meowww", 1, 2)
end

juju.on_unload(function()
    for i = 1, 30 do
        print("shaq is so cool and hot")
        create_notification("shaq is so cool and hot mmmm meowww", 1, 2)
    end
end)
