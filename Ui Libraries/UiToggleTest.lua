local Lib = {}
local Saves = {}
local Settings = {}

pcall(function()
    if isfile("ToggleTest".."/"..tostring(game.PlaceId)..".txt") then
Saves = game:GetService("HttpService"):JSONDecode(readfile("ToggleTest".."/"..tostring(game.PlaceId)..".txt"))
end
end)
function SaveSettings()
    writefile("ToggleTest".."/"..tostring(game.PlaceId)..".txt",game:GetService("HttpService"):JSONEncode(Settings))
end

function Lib:CreateWindow(name,ShouldSave)
    name = name or "Window"
    ShouldSave = ShouldSave or true
    if game.CoreGui:FindFirstChild("ToggleTest") then
        game.CoreGui:FindFirstChild("ToggleTest"):Destroy()
    end
    local ToggleTest = Instance.new("ScreenGui")
ToggleTest.Name = "ToggleTest"
ToggleTest.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ToggleTest.Parent =  game.CoreGui
local ma = Instance.new("Frame")
ma.Name = "ma"
ma.AnchorPoint = Vector2.new(0.5, 0.5)
ma.Size = UDim2.new(0, 340, 0, 278)
ma.Position = UDim2.new(0.4994138, 0, 0.5, 0)
ma.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
ma.Parent = ToggleTest
local UserInputService = game:GetService("UserInputService")

        local gui = ma

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

local UICorner3 = Instance.new("UICorner")
UICorner3.Parent = ma

local title = Instance.new("TextLabel")
title.Name = "title"
title.Size = UDim2.new(0, 325, 0, 31)
title.Position = UDim2.new(0.0235294, 0, 0.0251799, 0)
title.BackgroundColor3 = Color3.fromRGB(126, 0, 2)
title.FontSize = Enum.FontSize.Size14
title.TextSize = 14
title.RichText = true
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextWrapped = true
title.Font = Enum.Font.SourceSansBold
title.TextWrap = true
title.TextScaled = true
title.Parent = ma
title.Text = name

local UICorner = Instance.new("UICorner")
UICorner.Parent = title

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Size = UDim2.new(0, 340, 0, 228)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0, 0, 0.1798561, 0)
ScrollingFrame.Active = true
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarThickness = 0
ScrollingFrame.Parent = ma

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)
UIListLayout.Parent = ScrollingFrame

local toggles = {}
function Lib:Set(bool,i,name1)
    if bool == false then
        game:GetService("TweenService"):Create(i,TweenInfo.new(0.25),{BackgroundColor3 = Color3.fromRGB(252, 48, 3)}):Play()
    else
        game:GetService("TweenService"):Create(i,TweenInfo.new(0.25),{BackgroundColor3 = Color3.fromRGB(0, 186, 21)}):Play()
    end
    Settings[name1] = bool
    SaveSettings()
    pcall(callback,bool)
end

function toggles:CreateToggle(name1,callback)
    name1 = name1 or "Toggle"
    callback = callback or function() end
    Settings[name1] = false

    local Toggled = (Saves[name1] and true) or Settings[name1] or false

    local tframe = Instance.new("Frame")
    tframe.Name = "tframe"
    tframe.Size = UDim2.new(0, 325, 0, 34)
    tframe.Position = UDim2.new(0.0235294, 0, 0.2194245, 0)
    tframe.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
    tframe.Parent = ScrollingFrame
    
    local UICorner1 = Instance.new("UICorner")
    UICorner1.Parent = tframe

    local tog = Instance.new("Frame")
    tog.Name = "tog"
    tog.Size = UDim2.new(0, 30, 0, 28)
    tog.Position = UDim2.new(0.8707692, 0, 0.0882353, 0)
    tog.BackgroundColor3 = Color3.fromRGB(252, 48, 3)
    tog.Parent = tframe
    tog.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            Toggled = not Toggled
            Lib:Set(Toggled,tog,name1)
        end
    end)

        
    local UICorner2 = Instance.new("UICorner")
    UICorner2.Parent = tog
    
    local ttext = Instance.new("TextLabel")
    ttext.Name = "ttext"
    ttext.Size = UDim2.new(0, 283, 0, 34)
    ttext.BackgroundTransparency = 1
    ttext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ttext.FontSize = Enum.FontSize.Size24
    ttext.TextSize = 20
    ttext.RichText = true
    ttext.TextColor3 = Color3.fromRGB(255, 255, 255)
    ttext.TextWrapped = true
    ttext.Font = Enum.Font.SourceSansBold
    ttext.TextWrap = true
    ttext.TextXAlignment = Enum.TextXAlignment.Left
    ttext.Parent = tframe
    ttext.Text = name1
    local UIPadding = Instance.new("UIPadding")
    UIPadding.PaddingLeft = UDim.new(0, 10)
    UIPadding.Parent = ttext
Lib:Set(Toggled,tog,name1)

end
return toggles
end

local Window = Lib:CreateWindow("Hi")
Window:CreateToggle("ok",function(bool)
    print(bool)
end)
Window:CreateToggle("Yes",function(bool)
    print(bool,"Yes")
end)


--WHEN U SET TO TRUE IN TOGGLE OPTIONS IT CHANGES