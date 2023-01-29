if game.CoreGui:FindFirstChild("AutoK") then
    game.CoreGui:FindFirstChild("AutoK"):Destroy()
end
getgenv().Autokill = false
local Noclip
local namecall; namecall = hookmetamethod(game, "__namecall", function(self, ...)
    if getnamecallmethod() == "FireServer" and tostring(self) == "MainEvent" and ({...})[1] == "TeleportDetect" then

        return
    end
    return namecall(self, ...)
end)
local target = ""

function getPlayer(shortcut)
    local player = nil
  
    local g = game.Players:GetPlayers()
    for i = 1, #g do
      if string.lower(string.sub(g[i].Name, 1, string.len(shortcut))) == string.lower(shortcut) or string.lower(string.sub(g[i].DisplayName, 1, string.len(shortcut))) == string.lower(shortcut)  then
        target = g[i]
        break
      end
    end
  
    return player
  
  end


local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "AutoK"


local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 213, 0, 270)
Frame.Position = UDim2.new(0.3735225, 0, 0.2316832, 0)
Frame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Frame.Parent = ScreenGui

local UserInputService = game:GetService("UserInputService")

        local gui = Frame

        local dragging
        local dragInput
        local dragStart
        local startPos

        local function update(input)
        	local delta = input.Position - dragStart
        	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        gui.InputBegan:Connect(function(input)
        	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        		dragging = true
        		dragStart = input.Position
        		startPos = gui.Position
        		
        		input.Changed:Connect(function()
        			if input.UserInputState == Enum.UserInputState.End then
        				dragging = false
        			end
        		end)
        	end
        end)

        gui.InputChanged:Connect(function(input)
        	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        		dragInput = input
        	end
        end)

        UserInputService.InputChanged:Connect(function(input)
        	if input == dragInput and dragging then
        		update(input)
        	end
        end)


local Pic = Instance.new("ImageLabel")
Pic.Name = "Pic"
Pic.Size = UDim2.new(0, 145, 0, 136)
Pic.Position = UDim2.new(0.1618706, 0, 0.1333333, 0)
Pic.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Pic.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=3533959532&width=420&height=420&format=png"
Pic.Parent = Frame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 19)
UICorner.Parent = Pic

local UICorner1 = Instance.new("UICorner")
UICorner1.Parent = Frame

local Nam = Instance.new("TextLabel")
Nam.Name = "Nam"
Nam.Size = UDim2.new(0, 186, 0, 30)
Nam.BackgroundTransparency = 1
Nam.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Nam.FontSize = Enum.FontSize.Size24
Nam.TextSize = 20
Nam.TextColor3 = Color3.fromRGB(255, 255, 255)
Nam.Font = Enum.Font.GothamBold
Nam.Parent = Frame
Nam.Text = ""

local Tar = Instance.new("TextBox")
Tar.Name = "Tar"
Tar.Size = UDim2.new(0, 172, 0, 26)
Tar.Position = UDim2.new(0.096143, 0, 0.6888889, 0)
Tar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tar.FontSize = Enum.FontSize.Size28
Tar.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Tar.TextSize = 26
Tar.RichText = true
Tar.TextColor3 = Color3.fromRGB(0, 0, 0)
Tar.Text = ""
Tar.PlaceholderText = "Target Here"
Tar.CursorPosition = -1
Tar.Font = Enum.Font.SourceSansSemibold
Tar.ClearTextOnFocus = false
Tar.Parent = Frame
Tar.FocusLost:Connect(function()
getPlayer(Tar.Text)
wait()
Nam.Text = target.Name
local userId = target.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size180x180
local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
if isReady then
    Pic.Image = content
end
end)

local UICorner2 = Instance.new("UICorner")
UICorner2.Parent = Tar

local Clo = Instance.new("TextButton")
Clo.Name = "Clo"
Clo.Size = UDim2.new(0, 19, 0, 18)
Clo.Position = UDim2.new(0.89, 0, 0.022, 0)
Clo.BackgroundColor3 = Color3.fromRGB(255, 129, 2)
Clo.FontSize = Enum.FontSize.Size14
Clo.TextSize = 14
Clo.TextColor3 = Color3.fromRGB(0, 0, 0)
Clo.Text = ""
Clo.Font = Enum.Font.SourceSans
Clo.Parent = Frame
Clo.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
    getgenv().Autokill = false
end)


local UICorner3 = Instance.new("UICorner")
UICorner3.CornerRadius = UDim.new(0, 100)
UICorner3.Parent = Clo

local Sta = Instance.new("TextButton")
Sta.Name = "Sta"
Sta.Size = UDim2.new(0, 122, 0, 30)
Sta.Position = UDim2.new(0.2112676, 0, 0.8222222, 0)
Sta.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Sta.FontSize = Enum.FontSize.Size32
Sta.TextSize = 22
Sta.TextColor3 = Color3.fromRGB(255, 255, 255)
Sta.Font = Enum.Font.SourceSansBold
Sta.Parent = Frame
Sta.Text = "Start Autokill"
Sta.MouseButton1Click:Connect(function()
    local old = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame 

    getgenv().Autokill = not getgenv().Autokill
    if getgenv().Autokill == true then
        Sta.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        Sta.Text = "Stop Autokilling"

        Noclip = game:GetService("RunService").Stepped:Connect(function()
            for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true then
					child.CanCollide = false
				end
			end
            game:GetService("RunService").Heartbeat:Wait()
        end)

        function Reach()
            while getgenv().Autokill == true do
              pcall(
                  function()
                      for i, v in pairs(game.Players:GetChildren()) do
                          if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                              if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Handle") then
                                  firetouchinterest(
                                      game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle,
                                      v.Character.UpperTorso,
                                      0
                                  )
                              else
                                  firetouchinterest(game.Players.LocalPlayer.Character.RightHand, v.Character.UpperTorso, 0)
                                  firetouchinterest(game.Players.LocalPlayer.Character.LeftHand, v.Character.UpperTorso, 0)
                                  firetouchinterest(game.Players.LocalPlayer.Character.RightFoot, v.Character.UpperTorso, 0)
                                  firetouchinterest(game.Players.LocalPlayer.Character.LeftFoot, v.Character.UpperTorso, 0)
                                  firetouchinterest(game.Players.LocalPlayer.Character.RightLowerLeg, v.Character.UpperTorso, 0)
                                  firetouchinterest(game.Players.LocalPlayer.Character.LeftLowerLeg, v.Character.UpperTorso, 0)
                              end
                          end
                      end
                  end
              )
              wait()
            end   
          end
          local cor = coroutine.create(Reach)
          coroutine.resume(cor)

        repeat
        pcall(function ()
            if game.Players.LocalPlayer.Character:FindFirstChild("[Knife]") then
            if game.Players:FindFirstChild(target.Name).Character:WaitForChild("BodyEffects")["K.O"].Value == true and game.Players:FindFirstChild(target.Name).Character:WaitForChild("BodyEffects")["Dead"].Value == false then
                game.Players.LocalPlayer.Character:MoveTo(game.Players:FindFirstChild(target.Name).Character.UpperTorso.CFrame.Position + Vector3.new(0,3,0))
                game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
                wait()
            elseif game.Players:FindFirstChild(target.Name).Character:WaitForChild("BodyEffects")["K.O"].Value == false and game.Players:FindFirstChild(target.Name).Character:WaitForChild("BodyEffects")["Dead"].Value ~= true and ( game.Players.LocalPlayer.Character.PrimaryPart.Position - game.Players:FindFirstChild(target.Name).Character.PrimaryPart.Position).Magnitude > 5 then
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Players:FindFirstChild(target.Name).Character.UpperTorso.CFrame * CFrame.new(0,-14,0) * CFrame.Angles(0,math.rad(0),0) )
                game.Players.LocalPlayer.Character["[Knife]"]:Activate()
                elseif game.Players:FindFirstChild(target.Name).Character:WaitForChild("BodyEffects")["Dead"].Value == true then
                    game.Players.LocalPlayer.Character:MoveTo(game.Players:FindFirstChild(target.Name).Character.UpperTorso.CFrame.Position - (Vector3.new(0,70,0)) )
                end
        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("[Knife]") then
            game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
        else  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Knife] - $150"].Head.CFrame
            wait(0.3)
            fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Knife] - $150"].ClickDetector)
        end
    end)
    game:GetService("RunService").Heartbeat:Wait()
    until getgenv().Autokill == false or game.Players:FindFirstChild(target.Name) == nil
     game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = old
    Noclip:Disconnect()
    
else 
    Sta.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    Sta.Text = "Start Autokill"
end

end)
local UICorner4 = Instance.new("UICorner")
UICorner4.Parent = Sta


