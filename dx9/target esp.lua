local datamodel = dx9.GetDatamodel()
local players = dx9.FindFirstChild(datamodel, "Players")
local workspace = dx9.FindFirstChild(datamodel, "Workspace")
local playersF = dx9.FindFirstChild(workspace, "Players")
local charactersF = dx9.FindFirstChild(playersF, "Characters")
local inBoxF = dx9.FindFirstChild(playersF, "InBox")

local targetPlayers, lockers =
{ -- people to target
    ["normalgirIbysza"] = true,
    ["enpicism"] = true,
    ["dveph"] = true,
    ["z_nwt"] = true,
    ["amebleh"] = true,
    ["niyuoki"] = true,
    ["SelfDeport"] = true,
    ["pes0lvr"] = true,
    ["yappingtozach"] = true,
    -- all from here up are from april 2nd 2025
    ["BrightonPalacePier"] = true,
    ["0ii_Raxenii"] = true,
    -- all from here up are from april 4th 2025
},
{ -- lockers
    ["bleh0162"] = true,
    ["Samspam214"] = true,
    ["carepirealt5"] = true,
    ["roblox_user_4743206657"] = true, -- potential
    ["JAYSTAYTR0LLIN"] = true,
    ["UN56747822"] = true,
    ["fingeritformema"] = true,
    ["revi1s"] = true,
    ["Je60NeufTMort"] = true,
    ["veltets"] = true,
    ["lostinbarcelona"] = true,
    ["assist"] = true,
    ["XxCrazeViperxX"] = true,
    ["srtwoke"] = true,
    ["x6loccersrevenge"] = true,
    ["carveware"] = true,
    ["beabadoobeefangirl_3"] = true,
    ["JaxonVoiddd"] = true,
    ["cqnscious"] = true,
    ["rctoki"] = true,
    ["Z7Horror"] = true,
    ["lIIIllIIllIIIlII"] = true,
    ["mentionkil"] = true, 
    -- all from here up are from april 2nd 2025
    ["XxBladeRocketxX"] = true,
    -- all from here up are from april 4th 2025
    ["4persua"] = true,
    ["aberuleslikeaboss"] = true,
    ["6nneka"] = true,
    ["soulperc"] = true,
    ["masterwyatt1022"] = true,
    ["Pro_AimLoqcker"] = true,
    ["Reizaye"] = true,
    ["PinkPluffFish"] = true,
    ["ilovekimsosomuch"] = true,
    ["BlackRightsK"] = true,
    ["rueIovesme"] = true,
    ["ykme4runningcentral"] = true,
    ["6prophet"] = true,
    ["acoowe"] = true,
    ["shesmylover"] = true,
    ["ovrthinker"] = true,
    ["reygeekd"] = true,
    ["highschoolboyss"] = true,
    ["soulcastin"] = true,
    ["vpnaintlegit"] = true,
    ["Richardbond32"] = true,
    ["roblox_user_304231532"] = true,
    -- all from here up are from april 6th 2025
}

for _, player in next, dx9.GetChildren(players) do
    local playerName = dx9.GetName(player)
    if targetPlayers[playerName] then
        local character = dx9.FindFirstChild(charactersF, playerName)
        if character then
            local head = dx9.FindFirstChild(character, "Head")
            local leftFoot = dx9.FindFirstChild(character, "LeftFoot")
            
            if head and leftFoot then
                local headPos = dx9.GetPosition(head)
                local footPos = dx9.GetPosition(leftFoot)
                
                local headScreen = dx9.WorldToScreen({headPos.x, headPos.y, headPos.z})
                local footScreen = dx9.WorldToScreen({footPos.x, footPos.y, footPos.z})
                
                local characterHeight = math.abs(headScreen.y - footScreen.y)
                local characterWidth = characterHeight * 0.7
                
                dx9.DrawBox(
                    {headScreen.x - characterWidth/2, headScreen.y, headPos.z},
                    {headScreen.x + characterWidth/2, footScreen.y, footPos.z},
                    {255, 255, 255}
                )

                dx9.DrawString(
                    {headScreen.x - characterWidth*2, headScreen.y - 20, headPos.z},
                    {255, 255, 255},
                    playerName .. " (target)"
                )
            end
        end
    elseif lockers[playerName] then
        local character = dx9.FindFirstChild(charactersF, playerName)
        if character then
            local head = dx9.FindFirstChild(character, "Head")
            local leftFoot = dx9.FindFirstChild(character, "LeftFoot")
            
            if head and leftFoot then
                local headPos = dx9.GetPosition(head)
                local footPos = dx9.GetPosition(leftFoot)
                
                local headScreen = dx9.WorldToScreen({headPos.x, headPos.y, headPos.z})
                local footScreen = dx9.WorldToScreen({footPos.x, footPos.y, footPos.z})
                
                local characterHeight = math.abs(headScreen.y - footScreen.y)
                local characterWidth = characterHeight * 0.7
                
                dx9.DrawBox(
                    {headScreen.x - characterWidth/2, headScreen.y, headPos.z},
                    {headScreen.x + characterWidth/2, footScreen.y, footPos.z},
                    {255, 0, 0}
                )

                dx9.DrawString(
                    {headScreen.x - characterWidth*2, headScreen.y - 20, headPos.z},
                    {255, 0, 0},
                    playerName .. " (locker)"
                )
            end
        end
    end
end
