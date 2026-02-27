local YourName = "sigma" -- put ur name here (username not display)

local DataModel = dx9.GetDatamodel()
local Workspace = dx9.FindFirstChild(DataModel, 'Workspace')
local Players = dx9.FindFirstChild(DataModel, 'Players')

local dataModel = dx9.GetDatamodel()
local workspace = dx9.FindFirstChild(dataModel, "Workspace")
local military = dx9.FindFirstChild(workspace, "Military")
local rocket = dx9.FindFirstChild(military, "Military Barracks")

for _, npc in next, dx9.GetChildren(rocket) do
    if dx9.GetName(npc) == "Soilder" then
            local npcChar = dx9.FindFirstChild(npc, "Soilder")
            local npcHead = dx9.FindFirstChild(npcChar, "Head")

    local npcHeadPosition = dx9.GetPosition(npcHead)
    local screenPos = dx9.WorldToScreen({npcHeadPosition.x, npcHeadPosition.y, npcHeadPosition.z})

    dx9.DrawCircle({screenPos.x, screenPos.y}, {255, 255, 255}, 1)
    end
end
local Config = {
    enabled = true,
    boxColor = {255, 255, 255} -- white 
}

for _, player in next, dx9.GetChildren(Players) do
    if dx9.GetName(player) ~= YourName then
        -- find player model
        local character = dx9.FindFirstChild(Workspace, dx9.GetName(player))
        if character then
            -- player model
            local worldChar = dx9.FindFirstChild(character, "WorldCharacter")
            if worldChar then
                -- find head and left foot in player model
                local head = dx9.FindFirstChild(worldChar, "Head")
                local leftFoot = dx9.FindFirstChild(worldChar, "LeftFoot")
                
                if head and leftFoot then
                    -- get position of head and foot
                    local headPos = dx9.GetPosition(head)
                    local footPos = dx9.GetPosition(leftFoot)
                    
                    -- where is the head and foot in screen
                    local headScreen = dx9.WorldToScreen({headPos.x, headPos.y, headPos.z})
                    local footScreen = dx9.WorldToScreen({footPos.x, footPos.y, footPos.z})
                    
                    -- math for box esp
                    local characterHeight = math.abs(headScreen.y - footScreen.y)
                    local characterWidth = characterHeight * 0.7
                    
                    -- box esp
                    dx9.DrawBox(
                        {headScreen.x - characterWidth/2, headScreen.y, headPos.z},
                        {headScreen.x + characterWidth/2, footScreen.y, footPos.z},
                        Config.boxColor
                    )
                    
                    -- name esp
                    dx9.DrawString(
                        {headScreen.x - characterWidth/2, headScreen.y - 20, headPos.z},
                        {255, 255, 255},
                        dx9.GetName(player)
                    )
                end
            end
        end
    end
end

