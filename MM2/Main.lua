local UILibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/ExecutionerScripts/Ui-Library/main/MainScript'))()
local MainUI = UILibrary:Load("ExecutionerX [MM2]")
local MainPage = MainUI:CreatePage("Main",true,true)
local AutoFarm = MainUI:CreatePage("AutoFarm",true,false)
getgenv().Vars = {
    RemoveBorders = false,
    SprintTrail = false,
}
MainPage:CreateToggle("Remove Borders",function(value)
    getgenv().Vars.RemoveBorders = value
    if getgenv().Vars.RemoveBorders  == true then
        for i, v in pairs(game.Workspace:GetDescendants()) do
            if v:IsA("BasePart") and v.Name == "GlitchProof" then
                v.CanCollide = false
            end
        end
    else

        for ii, vv in pairs(game.Workspace:GetDescendants()) do
            if vv:IsA("BasePart") and vv.Name == "GlitchProof" then
                vv.CanCollide = true
            end
        end

    end
end)

MainPage:CreateButton("Anti Lag [Cant Deactivate]",function()
        for i, v in pairs(game.Workspace:GetDescendants()) do
            if v:IsA("MeshPart") and v.Name == "Rocks" then
                v:Destroy()
            end
            if v:IsA("BasePart") and v.Transparency ~= 1 and v.Name ~= "GlitchProof" then
                v.Material = Enum.Material.SmoothPlastic
            end
        end
        game.Workspace.DescendantAdded:Connect(function(v)
            if v:IsA("BasePart") and v.Transparency ~= 1 and v.Name ~= "GlitchProof" then
                v.Material = Enum.Material.SmoothPlastic
            end
        end)
end)

MainPage:CreateToggle("Show Sprint Trail",function(value)
    getgenv().Vars.Sprint = value
    if getgenv().Vars.Sprint  == true then
        repeat wait() until game.Players.LocalPlayer.Character ~= nil
        repeat
            wait(0.1)
            game.Players.LocalPlayer.Character:WaitForChild("SpeedTrail"):WaitForChild("Toggle"):FireServer(true)
        until getgenv().Vars.Sprint  == false
        game.Players.LocalPlayer.Character:WaitForChild("SpeedTrail"):WaitForChild("Toggle"):FireServer(false)
    end
end)
