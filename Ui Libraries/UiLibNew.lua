local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

local Executioner = {}
local SavedSettings = {}
local LibrarySettings = {}

local FontToUse = Font.new("rbxasset://fonts/families/Merriweather.json",Enum.FontWeight.Bold)

local function Tween(info)
    local object = info.Item
    local tweeninfo = info.TweenInfo
    local properties = info.Properties
    return game:GetService("TweenService"):Create(object,tweeninfo,properties)
end

local function Dragify(Item)

        local gui = Item

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
end

function Executioner.Start(options)
    options.Name = options.Name or "Hub"
    options.SaveConfigs = options.SaveConfigs or false
    options.ConfigsFolder = options.FolderName or "Executioner"

    if CoreGui:FindFirstChild(options.Name) then 
        CoreGui:FindFirstChild(options.Name):Destroy()
    end
    local NewUi = Instance.new("ScreenGui")
NewUi.Name = options.Name
NewUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
NewUi.Parent = CoreGui

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.Size = UDim2.new(0, 522, 0, 364)
Main.ClipsDescendants = true
Main.Position = UDim2.new(0.4994125, 0, 0.5, 0)
Main.BorderSizePixel = 0
Main.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Main.Parent = NewUi
Dragify(Main)

local UICorner = Instance.new("UICorner")
UICorner.Parent = Main

local UIStroke = Instance.new("UIStroke")
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Thickness = 0.9
UIStroke.Color = Color3.fromRGB(13, 13, 13)
UIStroke.Parent = Main

local Tabs = Instance.new("Frame")
Tabs.Name = "Tabs"
Tabs.Size = UDim2.new(0, 136, 0, 311)
Tabs.Position = UDim2.new(0.012, 0, 0.126, 0)
Tabs.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Tabs.Parent = Main

local TabsDisplay = Instance.new("ScrollingFrame")
TabsDisplay.Name = "TabsDisplay"
TabsDisplay.Size = UDim2.new(0, 136, 0, 311)
TabsDisplay.BackgroundTransparency = 1
TabsDisplay.Active = true
TabsDisplay.BorderSizePixel = 0
TabsDisplay.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TabsDisplay.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
TabsDisplay.ScrollBarThickness = 0
TabsDisplay.Parent = Tabs

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)
UIListLayout.Parent = TabsDisplay
local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 6)
UIPadding.Parent = TabsDisplay

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 0.9
UIStroke2.Color = Color3.fromRGB(13, 13, 13)
UIStroke2.Parent = Tabs

local UICorner2 = Instance.new("UICorner")
UICorner2.Parent = Tabs

local PagesDisplay = Instance.new("Frame")
PagesDisplay.Name = "PagesDisplay"
PagesDisplay.Size = UDim2.new(0, 100, 0, 100)
PagesDisplay.Position = UDim2.new(-0.210728, 0, 0.0576923, 0)
PagesDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PagesDisplay.Parent = Main

local Top = Instance.new("Frame")
Top.Name = "Top"
Top.Size = UDim2.new(0, 508, 0, 33)
Top.ClipsDescendants = true
Top.Position = UDim2.new(0.013, 0, 0.019, 0)
Top.BorderSizePixel = 0
Top.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Top.Parent = Main

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(0, 429, 0, 33)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.157, 0, 0, 0)
Title.BorderSizePixel = 0
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.FontSize = Enum.FontSize.Size28
Title.TextSize = 26
Title.RichText = true
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Text = options.Name
Title.TextWrapped = true
Title.Font = Enum.Font.Merriweather
Title.TextWrap = true
Title.Parent = Top

local UIStroke12 = Instance.new("UIStroke")
UIStroke12.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke12.Thickness = 0.9
UIStroke12.Color = Color3.fromRGB(13, 13, 13)
UIStroke12.Parent = Title

local UICorner13 = Instance.new("UICorner")
UICorner13.Parent = Top

local Settings = Instance.new("ImageButton")
Settings.Name = "Settings"
Settings.LayoutOrder = 4
Settings.ZIndex = 2
Settings.Size = UDim2.new(0, 25, 0, 25)
Settings.BackgroundTransparency = 1
Settings.Position = UDim2.new(0.0885827, 0, 0.1212121, 0)
Settings.ImageRectOffset = Vector2.new(324, 124)
Settings.Image = "rbxassetid://3926307971"
Settings.ImageRectSize = Vector2.new(36, 36)
Settings.Parent = Top

local UIStroke13 = Instance.new("UIStroke")
UIStroke13.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke13.Thickness = 0.9
UIStroke13.Color = Color3.fromRGB(13, 13, 13)
UIStroke13.Parent = Top

local Info = Instance.new("ImageButton")
Info.Name = "Info"
Info.LayoutOrder = 5
Info.ZIndex = 2
Info.Size = UDim2.new(0, 25, 0, 25)
Info.BackgroundTransparency = 1
Info.Position = UDim2.new(0.015, 0, 0.106, 0)
Info.ImageRectOffset = Vector2.new(964, 84)
Info.Image = "rbxassetid://3926305904"
Info.ImageRectSize = Vector2.new(36, 36)
Info.Parent = Top

    local Pages = {}
    local Count = 0
    function Pages.CreatePage(options)
        Count += 1
        options.Name = options.Name or "Tab"
        options.Searchbar = options.Searchbar or false

        local Page = Instance.new("Frame")
        Page.Name = "Page"
        Page.Size = UDim2.new(0, 361, 0, 311)
        Page.ClipsDescendants = true
        Page.Position = UDim2.new(2.6341867, 0, 0.2458892, 0)
        Page.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
        Page.Parent = PagesDisplay
        Page.Visible = ((Count == 1 and true) or false) 
        
        local UIStroke3 = Instance.new("UIStroke")
        UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        UIStroke3.Thickness = 0.9
        UIStroke3.Color = Color3.fromRGB(13, 13, 13)
        UIStroke3.Parent = Page
        
        local UICorner3 = Instance.new("UICorner")
        UICorner3.Parent = Page

        local Frame = Instance.new("ScrollingFrame")
        Frame.Name = "Frame"
        Frame.Size = UDim2.new(0, 361, 0, 273)
        Frame.BackgroundTransparency = 1
        Frame.Position = UDim2.new(0, 0, 0.1223161, 0)
        Frame.Active = true
        Frame.BorderSizePixel = 0
        Frame.BackgroundColor3 = Color3.fromRGB(130, 130, 130)
        Frame.CanvasSize = UDim2.new(0, 0, 0, 400)
        Frame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
        Frame.ScrollBarThickness = 4
        Frame.Parent = Page

        local UIPadding4 = Instance.new("UIPadding")
        UIPadding4.PaddingTop = UDim.new(0, 2)
        UIPadding4.Parent = Frame

        local UIListLayout1 = Instance.new("UIListLayout")
        UIListLayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout1.Padding = UDim.new(0, 8)
        UIListLayout1.Parent = Frame

        local Tab = Instance.new("TextButton")
Tab.Name = options.Name
Tab.Size = UDim2.new(0, 123, 0, 32)
Tab.Position = UDim2.new(0.0220588, 0, 0, 0)
Tab.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Tab.AutoButtonColor = false
Tab.FontSize = Enum.FontSize.Size24
Tab.TextSize = 19
Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab.Text = options.Name
Tab.TextWrapped = true
Tab.FontFace = FontToUse
Tab.TextWrap = true
Tab.Parent = TabsDisplay
Tab.MouseButton1Click:Connect(function()
    for i , v in pairs(PagesDisplay:GetChildren()) do
        v.Visible = false
    end
    Page.Visible = true
end)

local UICorner1 = Instance.new("UICorner")
UICorner1.Parent = Tab

local UIStroke1 = Instance.new("UIStroke")
UIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke1.Thickness = 0.9
UIStroke1.Color = Color3.fromRGB(13, 13, 13)
UIStroke1.Parent = Tab

        local Searchbar = Instance.new("Frame")
Searchbar.Name = "Searchbar"
Searchbar.Size = UDim2.new(0, 343, 0, 26)
Searchbar.ClipsDescendants = true
Searchbar.Position = UDim2.new(0.0249307, 0, 0.0192926, 0)
Searchbar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Searchbar.Parent = Page


local UICorner12 = Instance.new("UICorner")
UICorner12.Parent = Searchbar

local UIStroke10 = Instance.new("UIStroke")
UIStroke10.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke10.Thickness = 0.9
UIStroke10.Color = Color3.fromRGB(181, 181, 181)
UIStroke10.Parent = Searchbar

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.9008746, 0, 1, 0)
TextBox.BackgroundTransparency = 1
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.FontSize = Enum.FontSize.Size18
TextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 18
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Text = ""
TextBox.PlaceholderText = "Search"
TextBox.Font = Enum.Font.Merriweather
TextBox.Parent = Searchbar
TextBox:GetPropertyChangedSignal("Text"):Connect(function()
    local text = TextBox.Text:lower()
        for i, v in pairs(Frame:GetChildren())do
            if v:IsA("GuiObject")  then
                if string.find(v.Name:lower(),text) then 
                    v.Visible = true
                elseif v.Name ~= "Search" then
                    v.Visible = false
                end
            end
        end
    end)


local UIStroke11 = Instance.new("UIStroke")
UIStroke11.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke11.Thickness = 0.9
UIStroke11.Color = Color3.fromRGB(181, 181, 181)
UIStroke11.Parent = TextBox

local delete = Instance.new("ImageButton")
delete.Name = "delete"
delete.LayoutOrder = 6
delete.ZIndex = 2
delete.Size = UDim2.new(0, 25, 0, 25)
delete.BackgroundTransparency = 1
delete.Position = UDim2.new(0.913, 0, 0, 0)
delete.ImageRectOffset = Vector2.new(644, 724)
delete.Image = "rbxassetid://3926305904"
delete.ImageRectSize = Vector2.new(36, 36)
delete.Parent = Searchbar
delete.MouseButton1Click:Connect(function()
    TextBox.Text = ""
end)

local Components = {}
        function Components.AddSlider(options)
            options.Name = options.Name or "Slider"
            options.Min = options.Min or 1
            options.Max = options.Max or 10
            options.Default = options.Default or 1
            options.Callback = options.Callback or function() end
            options.BackgroundColor = options.BackgroundColor or Color3.fromRGB(255,0,0)
            options.Save = options.Save or false
            options.Flag = options.Flag or options.Name
            local Slider = Instance.new("Frame")
Slider.Name = options.Name
Slider.Size = UDim2.new(0, 339, 0, 68)
Slider.Position = UDim2.new(0.0304709, 0, 0, 0)
Slider.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Slider.Parent = Frame

local UIStroke4 = Instance.new("UIStroke")
UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke4.Thickness = 0.9
UIStroke4.Color = Color3.fromRGB(181, 181, 181)
UIStroke4.Parent = Slider

local UICorner4 = Instance.new("UICorner")
UICorner4.Parent = Slider

local Name = Instance.new("TextLabel")
Name.Name = "Name"
Name.Size = UDim2.new(0, 197, 0, 25)
Name.BorderColor3 = Color3.fromRGB(27, 42, 53)
Name.BackgroundTransparency = 1
Name.Position = UDim2.new(0.032, 0, 0.103, 0)
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.FontSize = Enum.FontSize.Size18
Name.TextSize = 18
Name.RichText = true
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.Text = options.Name
Name.TextWrapped = true
Name.FontFace = FontToUse
Name.TextWrap = true
Name.TextXAlignment = Enum.TextXAlignment.Left
Name.Parent = Slider

local Background = Instance.new("Frame")
Background.Name = "Background"
Background.Size = UDim2.new(0, 322, 0, 25)
Background.Position = UDim2.new(0.0235988, 0, 0.535014, 0)
Background.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Background.Parent = Slider

local Slide = Instance.new("Frame")
Slide.Name = "Slide"
Slide.Size = UDim2.new(0, 321, 0, 25)
Slide.BackgroundColor3 = Color3.fromRGB(175, 0, 2)
Slide.Parent = Background

local UICorner5 = Instance.new("UICorner")
UICorner5.Parent = Slide

local UIStroke5 = Instance.new("UIStroke")
UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke5.Thickness = 0.9
UIStroke5.Color = Color3.fromRGB(255, 255, 255)
UIStroke5.Parent = Slide

local UICorner6 = Instance.new("UICorner")
UICorner6.Parent = Background

local Value = Instance.new("TextLabel")
Value.Name = "Value"
Value.Size = UDim2.new(0, 321, 0, 26)
Value.BackgroundTransparency = 1
Value.Position = UDim2.new(0.0265487, 0, 0.5294118, 0)
Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Value.FontSize = Enum.FontSize.Size18
Value.TextSize = 15
Value.RichText = true
Value.TextColor3 = Color3.fromRGB(255, 255, 255)
Value.Text = "10000"
Value.FontFace = FontToUse
Value.TextXAlignment = Enum.TextXAlignment.Left
Value.Parent = Slider

local UIPadding1 = Instance.new("UIPadding")
UIPadding1.PaddingLeft = UDim.new(0, 10)
UIPadding1.Parent = Value
        end

        function Components.AddToggle(options)
            options.Name = options.Name or "Toggle"
            options.Default = options.Default or false
            options.Callback = options.Callback or function() end
            options.Save = options.Save or false
            options.Flag = options.Flag or options.Name
            local Toggle = Instance.new("TextButton")
Toggle.Name = options.Name
Toggle.Size = UDim2.new(0, 341, 0, 37)
Toggle.Position = UDim2.new(0.0249307, 0, 0.2835821, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Toggle.AutoButtonColor = false
Toggle.FontSize = Enum.FontSize.Size18
Toggle.TextSize = 18
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.Text = options.Name
Toggle.FontFace = FontToUse
Toggle.TextXAlignment = Enum.TextXAlignment.Left
Toggle.Parent = Frame

local Frame1 = Instance.new("Frame")
Frame1.Size = UDim2.new(0, 27, 0, 27)
Frame1.Position = UDim2.new(0.9013382, 0, 0.1351351, 0)
Frame1.BackgroundColor3 = Color3.fromRGB(0, 255, 29)
Frame1.Parent = Toggle

local UICorner7 = Instance.new("UICorner")
UICorner7.CornerRadius = UDim.new(0, 7)
UICorner7.Parent = Frame1

local mark = Instance.new("ImageButton")
mark.Name = "mark"
mark.ZIndex = 2
mark.Size = UDim2.new(1, 0, 0, 25)
mark.BackgroundTransparency = 1
mark.Position = UDim2.new(0.035714, 0, 0.0555556, 0)
mark.ImageRectOffset = Vector2.new(312, 4)
mark.Image = "rbxassetid://3926305904"
mark.ImageRectSize = Vector2.new(24, 24)
mark.Parent = Frame1

local UIStroke6 = Instance.new("UIStroke")
UIStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke6.Thickness = 0.9
UIStroke6.Color = Color3.fromRGB(181, 181, 181)
UIStroke6.Parent = Toggle

local UICorner8 = Instance.new("UICorner")
UICorner8.Parent = Toggle

local UIPadding2 = Instance.new("UIPadding")
UIPadding2.PaddingLeft = UDim.new(0, 7)
UIPadding2.Parent = Toggle
        end

        function Components.AddLabel(name)
            name = name or "Label"
            local Label = Instance.new("TextLabel")
Label.Name = name
Label.Size = UDim2.new(0, 341, 0, 41)
Label.Position = UDim2.new(0.0249307, 0, 0.8076923, 0)
Label.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Label.FontSize = Enum.FontSize.Size18
Label.TextSize = 18
Label.RichText = true
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextWrapped = true
Label.Text = name
Label.FontFace = FontToUse
Label.TextWrap = true
Label.TextXAlignment = Enum.TextXAlignment.Left
Label.Parent = Frame

local UIStroke8 = Instance.new("UIStroke")
UIStroke8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke8.Thickness = 0.9
UIStroke8.Color = Color3.fromRGB(181, 181, 181)
UIStroke8.Parent = Label

local UICorner10 = Instance.new("UICorner")
UICorner10.Parent = Label

local UIPadding5 = Instance.new("UIPadding")
UIPadding5.PaddingLeft = UDim.new(0, 7)
UIPadding5.Parent = Label
        end

        function Components.AddButton(options)
            options.Name = options.Name or "Button"
            options.Callback = options.Callback or function() end
            local Button = Instance.new("TextButton")
Button.Name = options.Name
Button.Size = UDim2.new(0, 341, 0, 37)
Button.Position = UDim2.new(0.0249307, 0, 0.4514925, 0)
Button.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Button.AutoButtonColor = false
Button.FontSize = Enum.FontSize.Size18
Button.TextSize = 18
Button.Text = options.Name
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.FontFace = FontToUse
Button.TextXAlignment = Enum.TextXAlignment.Left
Button.Parent = Frame

local UIStroke7 = Instance.new("UIStroke")
UIStroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke7.Thickness = 0.9
UIStroke7.Color = Color3.fromRGB(181, 181, 181)
UIStroke7.Parent = Button

local UICorner9 = Instance.new("UICorner")
UICorner9.Parent = Button

local UIPadding3 = Instance.new("UIPadding")
UIPadding3.PaddingLeft = UDim.new(0, 7)
UIPadding3.Parent = Button

local touch = Instance.new("ImageButton")
touch.Name = "touch"
touch.LayoutOrder = 4
touch.ZIndex = 2
touch.Size = UDim2.new(0, 25, 0, 25)
touch.BackgroundTransparency = 1
touch.Position = UDim2.new(0.901, 0, 0.135, 0)
touch.ImageRectOffset = Vector2.new(84, 204)
touch.Image = "rbxassetid://3926305904"
touch.ImageRectSize = Vector2.new(36, 36)
touch.Parent = Button
        end

        function Components.AddDropdown(options)
            options.Name = options.Name or "Toggle"
            options.Default = options.Default or "1"
            options.Options = options.Options or {"1","2","3"}
            options.Callback = options.Callback or function() end
            options.Save = options.Save or false
            options.Flag = options.Flag or options.Name
            local Dropdown = Instance.new("Frame")
Dropdown.Name = options.Name
Dropdown.Size = UDim2.new(0, 341, 0, 36)
Dropdown.ClipsDescendants = true
Dropdown.Position = UDim2.new(0, 105, 0, 20)
Dropdown.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Dropdown.Parent = Frame

local Name1 = Instance.new("TextLabel")
Name1.Name = "Name"
Name1.Size = UDim2.new(0, 296, 0, 36)
Name1.BorderColor3 = Color3.fromRGB(27, 42, 53)
Name1.BackgroundTransparency = 1
Name1.Position = UDim2.new(0, 9, 0, 0)
Name1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name1.FontSize = Enum.FontSize.Size18
Name1.TextSize = 18
Name1.RichText = true
Name1.TextColor3 = Color3.fromRGB(255, 255, 255)
Name1.Text = options.Name
Name1.TextWrapped = true
Name1.FontFace = FontToUse
Name1.TextWrap = true
Name1.TextXAlignment = Enum.TextXAlignment.Left
Name1.Parent = Dropdown

local Selected = Instance.new("TextLabel")
Selected.Name = "Selected"
Selected.Size = UDim2.new(0, 297, 0, 36)
Selected.BorderColor3 = Color3.fromRGB(27, 42, 53)
Selected.BackgroundTransparency = 1
Selected.Position = UDim2.new(0, 1, 0, 0)
Selected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Selected.FontSize = Enum.FontSize.Size18
Selected.TextSize = 18
Selected.RichText = true
Selected.TextColor3 = Color3.fromRGB(255, 255, 255)
Selected.Text = "1"
Selected.TextWrapped = true
Selected.FontFace = FontToUse
Selected.TextWrap = true
Selected.TextXAlignment = Enum.TextXAlignment.Right
Selected.Parent = Dropdown

local Open = Instance.new("ImageButton")
Open.Name = "Open"
Open.ZIndex = 2
Open.Size = UDim2.new(0, 25, 0, 25)
Open.BackgroundTransparency = 1
Open.Position = UDim2.new(0, 305, 0, 7)
Open.ImageRectOffset = Vector2.new(324, 524)
Open.Image = "rbxassetid://3926307971"
Open.ImageRectSize = Vector2.new(36, 36)
Open.Parent = Dropdown

local Display = Instance.new("ScrollingFrame")
Display.Name = "Display"
Display.Size = UDim2.new(0, 339, 0, 0)
Display.BackgroundTransparency = 1
Display.Position = UDim2.new(0, 0, 0, 39)
Display.Active = true
Display.BorderSizePixel = 0
Display.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Display.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Display.ScrollBarThickness = 6
Display.Parent = Dropdown

local UIListLayout2 = Instance.new("UIListLayout")
UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout2.Padding = UDim.new(0, 5)
UIListLayout2.Parent = Display

local line = Instance.new("Frame")
line.Name = "line"
line.Size = UDim2.new(0, 341, 0, 1)
line.BorderColor3 = Color3.fromRGB(181, 181, 181)
line.Position = UDim2.new(0, 0, 0, 38)
line.BorderSizePixel = 0
line.BackgroundColor3 = Color3.fromRGB(181, 181, 181)
line.Parent = Dropdown

local UIStroke9 = Instance.new("UIStroke")
UIStroke9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke9.Thickness = 0.9
UIStroke9.Color = Color3.fromRGB(181, 181, 181)
UIStroke9.Parent = Dropdown

local UICorner11 = Instance.new("UICorner")
UICorner11.Parent = Dropdown
end
return Components
    end
    return Pages
end
local hub = Executioner.Start({Name = "Hub",SaveConfigs = true,ConfigsFolder="Nugget"})
local page = hub.CreatePage({Name = "Gawk",Searchbar = true})
page.AddSlider({Name = "YES"})
page.AddButton({Name = "OMG"})
page.AddToggle({Name = "BAN"})
page.AddDropdown({Name = "SHOT"})
local page1 = hub.CreatePage({Name = "Player",Searchbar = true})


