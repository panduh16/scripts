local juju = juju
local create_notification = juju.create_notification
local readfile = readfile
local listfiles = listfiles
local makefolder = makefolder
local isfile = isfile
local isfolder = isfolder
local replicatedStorage = game:GetService("ReplicatedStorage")
local players = game:GetService("Players")
local lplayer = players.LocalPlayer
local mainevent = replicatedStorage:WaitForChild("MainEvent")
local HttpService = game:GetService("HttpService")

local fileselected = nil

if not isfolder("shaqmatics") then
    makefolder("shaqmatics")
end

local files = listfiles("shaqmatics")
if not files or #files == 0 then
    juju.create_element({
        name = "you need files to use this, put them in shaqmatics in workspace"
    }, {})
    return
end

local selectedFile = juju["create_element"]({
    ["name"] = "select schematic"
}, {
    ["dropdown"] = {
        ["default"] = {files[1]},
        ["options"] = files,
        ["requires_one"] = true,
        ["multi"] = false,
        ["flag"] = "whatfilebroooo"
    }
})

local loadFile = juju["create_element"]({
    ["name"] = "load file"
}, {
    ["button"] = {
        ["confirmation"] = true,
    }
})

juju["create_connection"](selectedFile["on_dropdown_change"], function(val)
    if typeof(val) == "table" and typeof(val[1]) == "string" then
        fileselected = val[1]
    else
        fileselected = nil
    end
end)


local function hasItems(required)
    local saveDataRaw = lplayer.DataFolder.Information.HouseSave.Value
    local success, saveData = pcall(function()
        return HttpService:JSONDecode(saveDataRaw)
    end)

    if not success then
        return false, {}, {}
    end

    local needed = {}
    for itemName, count in pairs(required) do
        needed[itemName] = count
    end

    local owned = {}
    local counts = {}

    for _, item in ipairs(saveData) do
        local itemName = item[1]
        if needed[itemName] and item[3] and item[3]["PlacedAt"] then
            counts[itemName] = counts[itemName] or 0
            if counts[itemName] < needed[itemName] then
                owned[itemName] = owned[itemName] or {}
                table.insert(owned[itemName], item)
                counts[itemName] = counts[itemName] + 1
            end
        end
    end

    local missing = {}
    local allGood = true

    for itemName, requiredCount in pairs(needed) do
        local have = counts[itemName] or 0
        if have < requiredCount then
            missing[itemName] = requiredCount - have
            allGood = false
        end
    end

    return allGood, owned, missing
end

juju["create_connection"](loadFile["on_clicked"], function()
    if not fileselected or not isfile(fileselected) then
        create_notification("invalid file", 2, 3)
        return
    end

    local raw = readfile(fileselected)
    if raw == "" then
        create_notification("empty file", 2, 3)
        return
    end

    local success, schematic = pcall(function()
        return HttpService:JSONDecode(raw)
    end)

    if not success then
        create_notification("error", 2, 3)
        print("error:", raw)
        return
    end

    if type(schematic) ~= "table" then
        create_notification("wrong data format", 2, 3)
        return
    end

    local requiredItems = {}
    for _, item in ipairs(schematic) do
        local itemName = item[1]
        if typeof(itemName) == "string" then
            requiredItems[itemName] = (requiredItems[itemName] or 0) + 1
        end
    end

    local hasAll, usableItems, missing = hasItems(requiredItems)

    if not hasAll then
        for missingName, missingCount in pairs(missing) do
            create_notification("missing " .. missingCount .. " of: " .. missingName, 2, 3)
        end
        return
    end

    local hrp = lplayer.Character and lplayer.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then
        return
    end
    local basePos = hrp.Position

    local useIndex = {}

    for i, item in ipairs(schematic) do
        local itemName, relative, rotation = item[1], item[2], item[3]

        local rotationCFrame = CFrame.new()
        if rotation then
            rotationCFrame = CFrame.Angles(math.rad(rotation[1] or 0), math.rad(rotation[2] or 0), math.rad(rotation[3] or 0))
        end

        useIndex[itemName] = (useIndex[itemName] or 0) + 1
        local itemList = usableItems[itemName]
        local placedItem = itemList and itemList[useIndex[itemName]]

        if not placedItem or not placedItem[3] or not placedItem[3]["PlacedAt"] then
            create_notification("no placedat data for: " .. itemName, 2, 3)
        end

        local offset = Vector3.new(unpack(relative))
        local worldPos = basePos + offset
        local cf = CFrame.new(worldPos) * rotationCFrame

        mainevent:FireServer("UpdateHouseItem", itemName, 0, placedItem[3]["PlacedAt"], cf)
        task.wait(0.75)
    end

    create_notification("loaded", 1, 3)
end)


-- ALL FURNITURE:
-- fabriccouch, WolfCarpet1, Tv, Toilet, Table/Chair, SoloChair, RCarpet,
-- OfficeChair, ModernTV, Microphone, LuxuryLight3, LuxuryLight2, LuxuryLight1, LaptopSetup,
-- L_dresser, GymWeights, GoldenToilet, GoldSet, GoldSet, ExpensiveModernTV, DumbbellProp, DiamondSet2,
-- DiamondSet, DiamondSet, CeilingFan, GamingPC, expensivebigbed, dresser, couchyellow, couch, bigbedpink,
-- bigbed, CeilingCandles, BlackRoundTable, BlackStool, BeigeSofa, twin bed, lamp, side stand, YCarpet4, YCarpet3,
-- YCarpet2, YCarpet, DaHoodSign, BlueSofa, Kid's Carpet, CatPainting2, FishDecor, SalonChair, SkinDisplayerFrame,
-- SkinDisplayer, GamingPCPink, VendingMachine, HeartBed, PotDecor, ShieldDecor, CatPainting1, TVHanging, RestaurantSeats,
-- MusicBox, BubbleGumMachine, EllieDesk, WolfCarpet2, Bathtub, TV, Mirror, Corner table, Bedside Stand, BigShower, SwordsDecor,
-- ShelvesDecor, GreenGamingChair, PinkGamerChair, TVStand1, TVStand2
