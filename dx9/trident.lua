local game = dx9.GetDatamodel()
local ws = dx9.FindFirstChildOfClass(game, "Workspace")

dx9.ShowConsole(true)

local config = {
    color = {255, 255, 255},
    Hitbox = false,
    Birch1_Trunk = false,
    Birch1_Leaves = false,
    Elm1_Leaves = false,
    Elm1_Trunk = false,
    default = false,
    Part = false,
    Placement = false,
    Fir3_Leaves = false,
    Fir3_Trunk = false,
    Palm1_Leaves = false,
    Palm1_Trunk = false,
    Torso = false,
    RightUpperArm = false,
    Head = false,
    LeftLowerArm = false,
    LeftUpperArm = false,
    LeftFoot = false,
    LeftLowerLeg = false,
    LeftUpperLeg = false,
    HumanoidRootPart = true,
    LeftHand = false,
    RightUpperLeg = false,
    RightHand = false,
    RightLowerLeg = false,
    RightFoot = false,
    RightLowerArm = false,
    LowerTorso = false,
    Frame = false,
    RightHinge = false,
    RightHandle = false,
    RightWall = false,
    LeftHandle = false,
    LeftWall = false,
    LeftHinge = false,
    Enclosure = false,
    Prim = false,
    Union = false,
    Body = false,
    State = false,
    Base = true,
    ["Meshes/triangle"] = false,
    un = false,
    Uniu = false,
    Emitter = false,
    Mug = false,
    SprayCans = false,
    Backplate = false,
    Vice = false,
    Tarp = false,
    hammer1 = false,
    Box = false,
    handkle = false,
    thingy = false
}

for _, model in next, dx9.GetChildren(ws) do
    if dx9.GetName(model) == "Model" then
        dx9.GetChildren(model)
        for _, child in next, dx9.GetChildren(model) do
            local pos = dx9.GetPosition(child)
            local screenPos = dx9.WorldToScreen({pos.x, pos.y, pos.z})
            if config[dx9.GetName(child)] then
            if screenPos then
                dx9.DrawString(
                    {screenPos.x, screenPos.y, pos.z},
                    {255, 255, 255},
                    dx9.GetName(child)
                )
            end
        end
        end
    end
end
