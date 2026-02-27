local id = 9999999999999999

local success, asset = pcall(function()
    return game:GetObjects("rbxassetid://" .. id)[1]
end)

if success and asset and asset:IsA("Animation") then
    local animationId = string.match(asset.AnimationId, "(%d+)")
    if animationId then -- after this you can just copy the animation id
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        local animator = humanoid:FindFirstChildOfClass("Animator")

        if animator then
            local anim = Instance.new("Animation")
            anim.AnimationId = "rbxassetid://" .. animationId
            local animTrack = animator:LoadAnimation(anim)
            animTrack.Priority = Enum.AnimationPriority.Action4
            animTrack:Play()
        end
    end
end
