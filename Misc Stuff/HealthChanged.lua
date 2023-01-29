local health = game.Players.LocalPlayer.Character.Humanoid.Health
game.Players.LocalPlayer.Character.Humanoid.HealthChanged:Connect(function(healthnow)
    local Damage = (health-healthnow)
    Damage = math.round(Damage)
    print("Damage Taken/Added:"..Damage)
    health = game.Players.LocalPlayer.Character.Humanoid.Health
end)