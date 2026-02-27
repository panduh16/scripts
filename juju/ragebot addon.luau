local juju = juju
local players = game:GetService("Players")
local vim = game:GetService("VirtualInputManager")
local lplayer = players.LocalPlayer
local autofire = juju["find_element"]("general", "auto fire")
local autoequip = juju["find_element"]("general", "auto equip")
local aegun = juju["find_element"]("auto equip", "gun")
local followtarget = juju["find_element"]("utility", "follow target")
local purchase = juju["purchase_item"]

juju.create_tab()
juju.create_section("stuff", 1, 1, 0)
juju.create_section("", 2, 1, 0)

local function knock(target)
    if target ~= nil then
        if not lplayer.Backpack:FindFirstChild("[Rifle]") and not lplayer.Character:FindFirstChild("[Rifle]") then
            purchase("rifle")
        end
        repeat
            task.wait()
        until not juju.is_purchasing()
        aegun:set_dropdown({"rifle"})
        autoequip:set_toggle(true)
        autofire:set_toggle(true)
        followtarget:set_toggle(true)
        repeat
            task.wait()
        until juju.is_player_knocked(target)
        autoequip:set_toggle(false)
        if lplayer.Character:FindFirstChild("[Rifle]") then
            lplayer.Character["[Rifle]"].Parent = lplayer.Backpack
        end
        autofire:set_toggle(false)
        followtarget:set_toggle(false)
        return true
    else
        return false
    end
end

local knockb = juju["create_element"]("stuff", {
    ["name"] = "knock"
}, {
    ["button"] = {
        ["confirmation"] = false
    }
})

juju["create_connection"](knockb["on_clicked"], function()
    local target = juju.get_ragebot_target()
    if target ~= nil then
        knock(target)
    end
end)

local bring = juju["create_element"]("stuff", {
    ["name"] = "bring"
}, {
    ["button"] = {
        ["confirmation"] = false
    }
})

juju["create_connection"](bring["on_clicked"], function()
    local target = juju.get_ragebot_target()
    if target ~= nil then
        local inital = lplayer.Character.HumanoidRootPart.CFrame
        knock(target)
        repeat
            task.wait()
        until juju.is_player_knocked(target)
        if juju.is_player_dead(target) == true then
            return
        end
        repeat
            lplayer.Character.HumanoidRootPart.CFrame = target.Character.UpperTorso.CFrame * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(90),0, 0)
            vim:SendKeyEvent(true, Enum.KeyCode.G, false, game)
            task.wait(0.05)
            vim:SendKeyEvent(false, Enum.KeyCode.G, false, game)
        until target.Character:FindFirstChild("GRABBING_CONSTRAINT")
        task.wait(0.5)
        lplayer.Character.HumanoidRootPart.CFrame = inital
        task.wait(0.1)
        vim:SendKeyEvent(true, Enum.KeyCode.G, false, game)
        task.wait(0.1)
        vim:SendKeyEvent(false, Enum.KeyCode.G, false, game)
    end
end)
