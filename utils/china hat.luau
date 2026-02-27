local chinahat = Instance.new("MeshPart")
chinahat.Size = Vector3.new(3, 0.6, 3)
chinahat.Material = Enum.Material.Neon
chinahat.CanCollide = false
chinahat.MeshId = 'http://www.roblox.com/asset/?id=1778999'
chinahat.Parent = workspace.CurrentCamera
chinahat.Color = Color3.fromRGB(255, 0, 255)

game:GetService("RunService").Heartbeat:Connect(function()
    local head = game.Players.LocalPlayer.Character:FindFirstChild("Head").CFrame
    if head then
        chinahat.CFrame = head * CFrame.new(0, 1, 0)
    end
end)
