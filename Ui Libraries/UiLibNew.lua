local Executioner = {}
local SavedSettings = {}
local LibrarySettings = {}

local function Tween(info)
    local object = info.Item
    local tweeninfo = info.TweenInfo
    local properties = info.Properties
    return game:GetService("TweenService"):Create(object,tweeninfo,properties)
end

function Executioner.Start(options)
    options.Name = options.Name or "Hub"
    options.SaveConfigs = options.SaveConfigs or false
    options.ConfigsFolder = options.FolderName or "Executioner"

    local NewUi = Instance.new("ScreenGui")
    NewUi.Name = "New Ui"
    NewUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    NewUi.Parent = game.CoreGui
    
    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.Size = UDim2.new(0, 522, 0, 364)
    Main.ClipsDescendants = true
    Main.Position = UDim2.new(0.4994125, 0, 0.5, 0)
    Main.BorderSizePixel = 0
    Main.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
    Main.Parent = NewUi
    
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

    local Pages = {}

    function Pages.CreatePage(options)
        options.Name = options.Name or "Tab"
        options.Searchbar = options.Searchbar or false

        local Page = Instance.new("Frame")
        Page.Name = "Page"
        Page.Size = UDim2.new(0, 361, 0, 311)
        Page.ClipsDescendants = true
        Page.Position = UDim2.new(2.6341867, 0, 0.2458892, 0)
        Page.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
        Page.Parent = PagesDisplay

        local UIStroke3 = Instance.new("UIStroke")
        UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        UIStroke3.Thickness = 0.9
        UIStroke3.Color = Color3.fromRGB(13, 13, 13)
        UIStroke3.Parent = Page

        local UICorner3 = Instance.new("UICorner")
        UICorner3.Parent = Page

        local Tab = Instance.new("TextButton")
        Tab.Name = "Tab"
        Tab.Size = UDim2.new(0, 123, 0, 32)
        Tab.Position = UDim2.new(0.0220588, 0, 0, 0)
        Tab.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        Tab.AutoButtonColor = false
        Tab.FontSize = Enum.FontSize.Size24
        Tab.TextSize = 19
        Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
        Tab.Text = "Tab"
        Tab.TextWrapped = true
        Tab.Font = Enum.Font.Unknown
        Tab.TextWrap = true
        Tab.Parent = TabsDisplay

        local UICorner1 = Instance.new("UICorner")
        UICorner1.Parent = Tab

        local UIStroke1 = Instance.new("UIStroke")
        UIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        UIStroke1.Thickness = 0.9
        UIStroke1.Color = Color3.fromRGB(13, 13, 13)
        UIStroke1.Parent = Tab
        
        local Seachbar = Instance.new("Frame")
        Seachbar.Name = "Seachbar"
        Seachbar.Size = UDim2.new(0, 343, 0, 26)
        Seachbar.ClipsDescendants = true
        Seachbar.Position = UDim2.new(0.0249307, 0, 0.0192926, 0)
        Seachbar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        Seachbar.Parent = Page

        local UICorner12 = Instance.new("UICorner")
        UICorner12.Parent = Seachbar

        local UIStroke10 = Instance.new("UIStroke")
        UIStroke10.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        UIStroke10.Thickness = 0.9
        UIStroke10.Color = Color3.fromRGB(181, 181, 181)
        UIStroke10.Parent = Seachbar

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
        TextBox.Parent = Seachbar

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
        delete.Parent = Seachbar

        local Frame = Instance.new("ScrollingFrame")
        Frame.Name = "Frame"
        Frame.Size = UDim2.new(0, 361, 0, 271)
        Frame.BackgroundTransparency = 1
        Frame.Position = UDim2.new(0, 0, 0.1223161, 0)
        Frame.Active = true
        Frame.BorderSizePixel = 0
        Frame.BackgroundColor3 = Color3.fromRGB(130, 130, 130)
        Frame.CanvasSize = UDim2.new(0, 0, 0, 400)
        Frame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
        Frame.ScrollBarThickness = 4
        Frame.Parent = Page
        
        local UIListLayout1 = Instance.new("UIListLayout")
        UIListLayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout1.Padding = UDim.new(0, 8)
        UIListLayout1.Parent = Frame

        local UIPadding4 = Instance.new("UIPadding")
        UIPadding4.PaddingTop = UDim.new(0, 2)
        UIPadding4.Parent = Frame


        local Toggles = {}
        local Buttons = {}
        local Dropdowns = {}
        local Labels = {}
        local Sliders = {}

        function Sliders.AddSlider(options)
            options.Name = options.Name or "Slider"
            options.Min = options.Min or 1
            options.Max = options.Max or 10
            options.Default = options.Default or 1
            options.Callback = options.Callback or function() end
            options.BackgroundColor = options.BackgroundColor or Color3.fromRGB(255,0,0)
            options.Save = options.Save or false
            options.Flag = options.Flag or options.Name
            return Sliders
        end
        function Toggles.AddToggle(options)
            options.Name = options.Name or "Toggle"
            options.Default = options.Default or false
            options.Callback = options.Callback or function() end
            options.Save = options.Save or false
            options.Flag = options.Flag or options.Name
            return Toggles
        end
        function Labels.AddLabel(name)
            name = name or "Label"
            return Labels
        end
        function Buttons.AddButton(options)
            options.Name = options.Name or "Button"
            options.Callback = options.Callback or function() end
            return Buttons
        end
        function Dropdowns.AddDropdown(options)
            options.Name = options.Name or "Toggle"
            options.Default = options.Default or "1"
            options.Options = options.Options or {"1","2","3"}
            options.Callback = options.Callback or function() end
            options.Save = options.Save or false
            options.Flag = options.Flag or options.Name
            return Dropdowns
        end

    end
    return Pages
end
local hub = Executioner.Start({Name = "Hubbb",SaveConfigs = true,ConfigsFolder="Nugget"})
hub.CreatePage({Name = "Gawk",Seachbar = true})