local Cashiers = game:GetService("Workspace"):WaitForChild("Cashiers"):GetChildren()
local Player = game.Players.LocalPlayer
local HRP = Player.Character:WaitForChild("HumanoidRootPart")
local CanContinue = false
local target
local namecall; namecall = hookmetamethod(game, "__namecall", function(self, ...)
    if getnamecallmethod() == "FireServer" and tostring(self) == "MainEvent" and ({...})[1] == "TeleportDetect" then

        return
    end
    return namecall(self, ...)
end)
getgenv().D = true
function GetNearCashier()
    for i , v in pairs(Cashiers) do
        local C_Head = v:WaitForChild("Head")
        local C_Humanoid = v:WaitForChild("Humanoid")
        if (C_Head.Position - HRP.Position).Magnitude < math.huge and C_Humanoid.Health > 0 then
            target = v
            return v
        end
    end
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ExecutionerScripts/Roblox-Stuff/main/ServerHopper.lua"))()

end
function CollectCash()
    pcall(function()
    for i, v in pairs(game:GetService("Workspace").Ignored.Drop:GetDescendants()) do
        if v:IsA("ClickDetector") and v.Parent and v.Parent.Name == "MoneyDrop" then
            if (v.Parent.Position - HRP.Position).Magnitude <= 14 then
                local C_Head = target:WaitForChild("Head")
                repeat
                    
                    HRP.CFrame = C_Head.CFrame * CFrame.new(0,-8,0)
                    fireclickdetector(v)
                    game:GetService("RunService").Heartbeat:Wait()

                until not v or not v.Parent
            end
        end
    end
    wait(0.05)
    Start()
end)
end

function Start()
    local Cashier = GetNearCashier()
    local C_Open = Cashier:WaitForChild("Head")
    local C_Humanoid = Cashier:WaitForChild("Humanoid")
    local CanPunch = false
    HRP.Anchored = false
    function Reach()
        while C_Humanoid.Health > 1 do
          pcall(
              function()
                      if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                          if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Handle") then
                              firetouchinterest(
                                  game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle,
                                  C_Open,
                                  0
                              )
                          else
                              firetouchinterest(game.Players.LocalPlayer.Character.RightHand, C_Open, 0)
                              firetouchinterest(game.Players.LocalPlayer.Character.LeftHand, C_Open, 0)
                              firetouchinterest(game.Players.LocalPlayer.Character.RightFoot, C_Open, 0)
                              firetouchinterest(game.Players.LocalPlayer.Character.LeftFoot, C_Open, 0)
                              firetouchinterest(game.Players.LocalPlayer.Character.RightLowerLeg, C_Open, 0)
                              firetouchinterest(game.Players.LocalPlayer.Character.LeftLowerLeg, C_Open, 0)
                          end
                      end
                  end
          )
          wait()
        end   
      end
      local cor = coroutine.create(Reach)
      coroutine.resume(cor)
      while C_Humanoid.Health > 0 do
        if Player.Backpack:FindFirstChild("Combat") then
            Player.Backpack:FindFirstChild("Combat").Parent = Player.Character
        end
    local Combat = Player.Character:FindFirstChild("Combat")

    HRP.CFrame = C_Open.CFrame * CFrame.new(0,-8,0)
    Combat:Activate()

    game:GetService("RunService").Heartbeat:Wait()
    end
CollectCash()
end
Start()
