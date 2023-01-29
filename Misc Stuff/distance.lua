function FindDistance()
	local player = game.Players.LocalPlayer
	for i , v in pairs(game.Players:GetChildren()) do
		if v.Name ~= player.Name then
			if v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("distance") then
				local distance = (player.Character:FindFirstChild("HumanoidRootPart").Position - v.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
				distance = math.ceil(distance)
				v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("distance").Distance.Text = distance.."m"
			else


				local distance = Instance.new("BillboardGui")
				local Distance = Instance.new("TextLabel")

				--Properties:

				distance.Name = "distance"
				distance.Parent = v.Character:FindFirstChild("HumanoidRootPart")
				distance.Active = true
				distance.AlwaysOnTop = true
				distance.LightInfluence = 1.000
				distance.MaxDistance = 10000.000
				distance.Size = UDim2.new(0, 50, 0, 50)

				Distance.Name = "Distance"
				Distance.Parent = distance
				Distance.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Distance.BackgroundTransparency = 1.000
				Distance.Size = UDim2.new(1, 0, 1, 0)
				Distance.Font = Enum.Font.Arial
				Distance.Text = ""
				Distance.TextColor3 = Color3.fromRGB(236, 236, 236)
				Distance.TextSize = 16.000
				Distance.TextStrokeTransparency = 0.580
				Distance.TextWrapped = true
			end
		end
	end
end


game:GetService("RunService").RenderStepped:Connect(FindDistance)