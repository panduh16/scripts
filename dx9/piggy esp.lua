local DataModel = dx9.GetDatamodel()
local Workspace = dx9.FindFirstChild(DataModel, "Workspace")
local Piggy = dx9.FindFirstChild(Workspace, "PiggyNPC")

local Config = {
	enabled = true,
	boxColor = { 255, 0, 0 },
}

for _, player in next, dx9.GetChildren(Piggy) do
	local head = dx9.FindFirstChild(player, "Head")
	local leftFoot = dx9.FindFirstChild(player, "Left Leg")

	if head and leftFoot then
		local Hpos = dx9.GetPosition(head)
		local Lpos = dx9.GetPosition(leftFoot)
		local HscreenPos = dx9.WorldToScreen({ Hpos.x, Hpos.y, Hpos.z })
		local LscreenPos = dx9.WorldToScreen({ Lpos.x, Lpos.y, Lpos.z })

		if HscreenPos and LscreenPos then
			local playerName = dx9.GetName(player)

			local characterHeight = math.abs(HscreenPos.y - LscreenPos.y)
			local characterWidth = characterHeight * 0.7

			dx9.DrawBox(
				{ HscreenPos.x - characterWidth / 2, HscreenPos.y, Hpos.z },
				{ HscreenPos.x + characterWidth / 2, LscreenPos.y, Lpos.z },
				Config.boxColor
			)

			dx9.DrawString({ HscreenPos.x, HscreenPos.y + 2 }, Config.boxColor, playerName)
		end
	end
end
