local DataModel = dx9.GetDatamodel()
local Workspace = dx9.FindFirstChild(DataModel, "Workspace")
local Game = dx9.FindFirstChild(Workspace, "GAME")
local Suspects = dx9.FindFirstChild(Game, "Suspects")

local Config = {
	enabled = true,
	boxColor = { 255, 255, 255 },
}

for _, player in next, dx9.GetChildren(Suspects) do
	local head = dx9.FindFirstChild(player, "Head")
	if head then
		local pos = dx9.GetPosition(head)
		local screenPos = dx9.WorldToScreen({ pos.x, pos.y, pos.z })

		if screenPos then
			local playerName = dx9.GetName(player)
			local label = "[Suspect]"

			if string.find(playerName, "Civilian") then
				label = "[Civilian]"
			end

			dx9.DrawString({ screenPos.x, screenPos.y }, Config.boxColor, label)
		end
	end
end
