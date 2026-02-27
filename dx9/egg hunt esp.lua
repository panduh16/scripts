local DataModel = dx9.GetDatamodel()
local Workspace = dx9.FindFirstChild(DataModel, "Workspace")

local Config = {
	enabled = true,
	boxColor = { 255, 255, 255 },
}

for _, egg in next, dx9.GetChildren(Workspace) do
	local name = dx9.GetName(egg)
	if string.find(name, "Egg", 1, true) then
		local pos = dx9.GetPosition(egg)
		local screenPos = dx9.WorldToScreen({ pos.x, pos.y, pos.z })

		if screenPos then
			local label = "[" .. name .. "]"

			dx9.DrawString({ screenPos.x, screenPos.y }, Config.boxColor, label)
		end
	end
end
