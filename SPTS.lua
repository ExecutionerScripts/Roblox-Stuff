local UILibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/ExecutionerScripts/Ui-Library/main/MainScript.lua'))()
local MainUI = UILibrary:Load("ExecutionerX")
local AutoFarm = MainUI:CreatePage("Farming",true,true)
local Teleport = MainUI:CreatePage("Teleport",true,false)


local RunS = game:GetService("RunService")
local Died = false

local FS_Areas = {
    ["Rock"] = game:GetService("Workspace").Map["Training_Decorations"].FistStrength.TrainingRock.CFrame,
    ["Crystal"] = game:GetService("Workspace").Map["Training_Decorations"].FistStrength.TrainingCrystal.Part.CFrame,
    ["Blue Star"] = game:GetService("Workspace").Map.TrainingArea.StarFSTraining1.CFrame,
    ["Green Star"] = game:GetService("Workspace").Map.TrainingArea.StarFSTraining2.CFrame,
    ["Red Star"] = game:GetService("Workspace").Map.TrainingArea.StarFSTraining3.CFrame
}

local BT_Areas = {
    ["Ice Bath"] = game:GetService("Workspace").Map["Training_Decorations"].BodyToughness.ColdBath.Water.CFrame,
    ["Fire Bath"] = game:GetService("Workspace").Map["Training_Decorations"].BodyToughness.FireBath.FirePart.CFrame * CFrame.new(0,4,0),
    ["Ice Bath 2"] = game:GetService("Workspace").Map["Training_Decorations"].BodyToughness.IceBath.IcePart.CFrame,
    ["Tornado"] = game:GetService("Workspace").Map["Training_Decorations"].BodyToughness.Tornado.Smoke.CFrame,
    ["Volcano"] = game:GetService("Workspace").Map["Training_Decorations"].BodyToughness.Volcano.Lava.LavaPart.CFrame,
    ["HellFire"] = game:GetService("Workspace").Map["Training_Decorations"].BodyToughness.GreenFireBBEffectPart.CFrame,
    ["Red Acid"] = game:GetService("Workspace").Map.TrainingArea.LavaPart2.CFrame,
    ["Green Acid"] = CFrame.new(-284.019501, 289.766602, 993.931458)
}
local Count = 0
local Player = game:GetService("Players").LocalPlayer
local Remote = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent")
if not Player.Character then
repeat Remote:FireServer({"Respawn"}) wait(1) until Player.Character ~= nil
end
game:GetService("Lighting").Blur.Enabled = false
Player.PlayerGui.IntroGui.Enabled = false
Player.PlayerGui.ScreenGui.Enabled = true

Player.Idled:Connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),game.Workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),game.Workspace.CurrentCamera.CFrame)
end)

Player.CharacterAdded:Connect(function(c)
    Died = false
    c:WaitForChild("Humanoid").Died:Connect(function()
        wait(5)
        Remote:FireServer({"Respawn"})
        game:GetService("Lighting").Blur.Enabled = false
        Player.PlayerGui.IntroGui.Enabled = false
        Player.PlayerGui.ScreenGui.Enabled = true
        Died = true
        Count += 1 
        if Count > 6 then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ExecutionerScripts/Roblox-Stuff/main/ServerHopper.lua"))()
        end
    end)
end)
Player.Character:WaitForChild("Humanoid").Died:Connect(function()
    wait(5)
    Remote:FireServer({"Respawn"})
    game:GetService("Lighting").Blur.Enabled = false
    Player.PlayerGui.IntroGui.Enabled = false
    Player.PlayerGui.ScreenGui.Enabled = true
    Died = true
    Count += 1
end)

getgenv().Fist = false
getgenv().Psychic = false
getgenv().Force = false
getgenv().Speed = false
getgenv().Toughness = false



AutoFarm:CreateToggle("Autofarm Fist Strength",function(v)
    getgenv().Fist = v
    while getgenv().Fist == true do
        pcall(function()
        local QuestData = game:GetService("HttpService"):JSONDecode(Player:WaitForChild("PrivateStats"):WaitForChild("QuestData").Value)
        local FistStrength = Player:WaitForChild("PrivateStats"):WaitForChild("FistStrength").Value


        if FistStrength >= 10000000000000 then
            Player.Character:SetPrimaryPartCFrame(FS_Areas["Red Star"] * CFrame.new(0,4,0))
            Remote:FireServer({ "Add_FS_Request", 6 })
        elseif FistStrength >= 100000000000 then
            Player.Character:SetPrimaryPartCFrame(FS_Areas["Green Star"] * CFrame.new(0,4,0))
            Remote:FireServer({ "Add_FS_Request", 5 })
        elseif FistStrength >= 1000000000 then
            Player.Character:SetPrimaryPartCFrame(FS_Areas["Blue Star"] * CFrame.new(0,4,0))
            Remote:FireServer({ "Add_FS_Request", 4 })
        elseif QuestData and QuestData.MainQuest and QuestData.MainQuest.No >= 10 then
            Player.Character:SetPrimaryPartCFrame(FS_Areas.Crystal * CFrame.new(0,4,0))
            Remote:FireServer({ "Add_FS_Request", 3 })
        elseif QuestData and QuestData.MainQuest and QuestData.MainQuest.No >= 4 then
            Player.Character:SetPrimaryPartCFrame(FS_Areas.Rock * CFrame.new(0,4,0))
            Remote:FireServer({ "Add_FS_Request", 2 })
        elseif QuestData and QuestData.MainQuest and QuestData.MainQuest.No < 4 then
            Remote:FireServer({ "Add_FS_Request", 1 })
        end
    end)
    RunS.Heartbeat:Wait()
    end
end)

AutoFarm:CreateToggle("Autofarm Body Toughness",function(v)
    getgenv().Toughness = v
    while getgenv().Toughness == true do
        local QuestData = game:GetService("HttpService"):JSONDecode(Player:WaitForChild("PrivateStats"):WaitForChild("QuestData").Value)
        local BodyToughness = Player:WaitForChild("PrivateStats"):WaitForChild("BodyToughness").Value
        Remote:FireServer({"+BT1"})

        if BodyToughness >= 10000000000000 then
            Player.Character:SetPrimaryPartCFrame(BT_Areas["Red Acid"])
        elseif BodyToughness >= 100000000000 then
            Player.Character:SetPrimaryPartCFrame(BT_Areas["Green Acid"])
        elseif BodyToughness >= 1000000000 then
            Player.Character:SetPrimaryPartCFrame(BT_Areas["HellFire"])
        elseif BodyToughness >= 10000000 then
            Player.Character:SetPrimaryPartCFrame(BT_Areas["Volcano"])
        elseif BodyToughness >= 1000000 then
            Player.Character:SetPrimaryPartCFrame(BT_Areas["Tornado"])
        elseif BodyToughness >= 100000 then
            Player.Character:SetPrimaryPartCFrame(BT_Areas["Ice Bath 2"])
        elseif BodyToughness >= 10000 then
            Player.Character:SetPrimaryPartCFrame(BT_Areas["Fire Bath"])
        elseif FistStrength >= 100 then
            Player.Character:SetPrimaryPartCFrame(BT_Areas["Ice Bath"])
        end
    RunS.Heartbeat:Wait()
    end
end)

AutoFarm:CreateToggle("Autofarm  Psychic Power",function(v)
    getgenv().Psychic = v
    while getgenv().Psychic == true do
        local QuestData = game:GetService("HttpService"):JSONDecode(Player:WaitForChild("PrivateStats"):WaitForChild("QuestData").Value)
        if QuestData and QuestData.MainQuest and QuestData.MainQuest.No >= 9 then
        Remote:FireServer({"+PP2"})
        else 
            Remote:FireServer({"+PP1"})
        end
        RunS.Heartbeat:Wait()
    end
end)

AutoFarm:CreateToggle("Autofarm  Jump Force",function(v)
    getgenv().Force = v
    while getgenv().Force == true do
        local QuestData = game:GetService("HttpService"):JSONDecode(Player:WaitForChild("PrivateStats"):WaitForChild("QuestData").Value)
        local JumpForce = Player.PrivateStats.JumpForce.Value
        if QuestData and QuestData.MainQuest and QuestData.MainQuest.No >= 6 then

            if JumpForce >= 12000000 then
                Remote:FireServer({"Add_JF_Request",5})
            elseif JumpForce >= 2000000 then
                Remote:FireServer({"Add_JF_Request",4})
            elseif JumpForce >= 207500 then
                Remote:FireServer({"Add_JF_Request",3})
            elseif JumpForce >= 9000 then
                Remote:FireServer({"Add_JF_Request",2})
            elseif JumpForce < 9000 then
                Remote:FireServer({"Add_JF_Request",1})
            end

        else
            Remote:FireServer({"Add_JF_Request",1})
        end
        RunS.Heartbeat:Wait()
    end
end)

AutoFarm:CreateToggle("Autofarm  Movement Speed",function(v)
    getgenv().Speed = v
    while getgenv().Speed == true do
        local QuestData = game:GetService("HttpService"):JSONDecode(Player:WaitForChild("PrivateStats"):WaitForChild("QuestData").Value)
        local MovementSpeed = Player.PrivateStats.MovementSpeed.Value
        if QuestData and QuestData.MainQuest and QuestData.MainQuest.No >= 6 then

            if Player.PrivateStats.MovementSpeed.Value >= 4670000 then
                Remote:FireServer({"Add_MS_Request",5})
            elseif Player.PrivateStats.MovementSpeed.Value >= 565800 then
                Remote:FireServer({"Add_MS_Request",4})
            elseif Player.PrivateStats.MovementSpeed.Value >= 4500 then
                Remote:FireServer({"Add_MS_Request",3})
            elseif Player.PrivateStats.MovementSpeed.Value >= 100 then
                Remote:FireServer({"Add_MS_Request",2})
            elseif Player.PrivateStats.MovementSpeed.Value < 100 then
                Remote:FireServer({"Add_MS_Request",1})
            end
            
        else
            Remote:FireServer({"Add_MS_Request",1})
        end

        RunS.Heartbeat:Wait()
    end
end)
AutoFarm:CreateButton("Unequip Weights",function()
    Remote:FireServer({"Weight","Unequip"})
end)

syn.queue_on_teleport(
    "loadstring(game:HttpGet('https://raw.githubusercontent.com/ExecutionerScripts/Roblox-Stuff/main/SPTS.lua'))()"
)
