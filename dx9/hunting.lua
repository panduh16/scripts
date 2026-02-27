local DataModel = dx9.GetDatamodel()
local Workspace = dx9.FindFirstChild(DataModel, 'Workspace')

local lower = string.lower
local find = string.find

local Animals = dx9.FindFirstChild(Workspace, 'Animals')

for _, animal in next, dx9.GetChildren(Animals) do
    for _, part in next, dx9.GetChildren(animal) do
        if dx9.GetName(part) == "Organs" then
            for _, organ in next, dx9.GetChildren(part) do
                if find(lower(dx9.GetName(organ)), "brain") then
                    local pos = dx9.GetPosition(organ)
                    local screenPos = dx9.WorldToScreen({pos.x, pos.y, pos.z})
                    
                    if screenPos then
                        dx9.DrawString(
                            {screenPos.x, screenPos.y, pos.z},
                            {255, 255, 255},
                            dx9.GetName(animal)
                        )
                    end
                end
            end
        end
    end
end
