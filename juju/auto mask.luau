local MASK_NAME = "paintball mask" 


local juju = juju
local create_connection = juju["create_connection"]
local is_purchasing = juju["is_purchasing"]
local purchase_item = juju["purchase_item"]
local players_service = cloneref(game:GetService("Players"))
local local_player = players_service["LocalPlayer"]
local heartbeat = cloneref(game:GetService("RunService"))["Heartbeat"]
local on_local_character_loaded = juju["get_signal"]("on_local_character_loaded")
local backpack = local_player:WaitForChild("Backpack")

local toggle = juju["create_element"]({
    ["name"] = "auto mask"
}, {
    ["toggle"] = {
        flag = "auto_mask",
        default = false
    }
})


local character = local_player.Character or local_player.CharacterAdded:Wait()
local hrp = character:FindFirstChild("HumanoidRootPart")

local function update_character()
    character = local_player.Character
    hrp = character and character:WaitForChild("HumanoidRootPart", 9e9)
end

local function has_mask()
    for _, item in ipairs(local_player.Backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name:lower():find("mask") then
            return item
        end
    end
    for _, item in ipairs(character:GetChildren()) do
        if item:IsA("Tool") and item.Name:lower():find("mask") then
            return item
        end
    end
    return nil
end

local function is_equipped()
    if not character or not hrp then return end
    if character:FindFirstChild("In-gameMask") then
        return true
    else
        return false
    end
end

local function do_auto_mask()
    if not character or not hrp then return end
    local equipped = is_equipped()
    if equipped then
        return
    end
    local mask = has_mask()
    if mask then
        if mask.Parent ~= character then
            mask.Parent = character
            mask:Activate()
            mask.Parent = backpack
        else
            mask:Activate()
            mask.Parent = backpack
        end
        return
    end

    if not is_purchasing() and not has_mask() then
        purchase_item(MASK_NAME)
    end
end

local character_connection = nil
local mask_connection = nil

create_connection(toggle["on_toggle_change"], function(state)
    if mask_connection then mask_connection:Disconnect() end
    if character_connection then character_connection:Disconnect() end

    if state then
        update_character()
        character_connection = create_connection(on_local_character_loaded, function()
            update_character()
        end)
        mask_connection = create_connection(heartbeat, do_auto_mask)
    end
end)


juju["on_unload"](function()

end)
