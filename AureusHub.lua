local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local UserId = tostring(LocalPlayer.UserId)
local CurrentGameId = game.GameId

local gameNames = {
    [383310974] = "Adopt Me",
    [6764180126] = "Go Fishing",
    [5750914919] = "Fisch",
    [5686465822] = "Pet Catchers",
    [2380077519] = "Slap Battles",
    [5361032378] = "Sols RNG",
    [3808081382] = "The Strongest Battleground",
    [2440500124] = "Doors",
    [4777817887] = "Blade Ball",
    [5477548919] = "Honkai Star Rail Simulator",
    [2619619496] = "Bedwars",
    [224422602] = "Elemental Battlegrounds",
    [1451439645] = "King Legacy",
    [994732206] = "Blox Fruits",
    [2316994223] = "Pet Simulator X",
    [504035427] = "Zombie Attack",
    [5303541547] = "Two Piece",
    [848145103] = "Dungeon Quest",
    [92096286] = "Trade Lands",
    [2324662457] = "Anime Fighters Simulator",
    [111958650] = "Arsenal",
    [1318971886] = "Grand Piece Online (Alternative)",
    [703124385] = "Tower Of Hell",
    [741590026] = "Steve One Piece",
    [66654135] = "Murder Mystery 2",
    [1342991001] = "A One Piece Game",
    [1701332290] = "Piece X Tycoon",
    [498490399] = "Restaurant Tycoon 2",
    [1493595237] = "VN Piece",
    [3904583189] = "Ro Fruit",
    [3359505957] = "Collect All Pets",
    [648454481] = "Grand Piece Online",
    [4205109410] = "Anime Defense Simulator",
    [4098816381] = "Anime Souls Simulator"
}

local list = {
    [383310974] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/refs/heads/Free/AdoptMe.lua'))()",
    [6764180126] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/refs/heads/Free/GOFISHING.lua'))()",
    [5750914919] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/refs/heads/Free/Fisch.lua'))()",
    [5686465822] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/PetCatchers.lua'))()",
    [2380077519] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/SlapBattles.lua'))()",
    [5361032378] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/SolRNG.lua'))()",
    [3808081382] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/TheStrongestBattleground.lua'))()",
    [2440500124] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/Doors.lua'))()",
    [4777817887] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/BladeBall.lua'))()",
    [5477548919] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/HonkaiStarRailSimulator.lua'))()",
    [2619619496] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/GAME/main/bedwar.txt'))()",
    [224422602] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/elementBattlegr.lua'))()",
    [1451439645] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/KingLegacyFree.lua'))()",
    [994732206] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/main/BloxFruit/BloxFruitTEST_ONLY.lua'))()",
    [2316994223] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/PetSimXFree.lua'))()",
    [504035427] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/ZombieAtack.lua'))()",
    [5303541547] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/AlongNgu/alonebruh/main/twoPiecehoho.lua'))()",
    [848145103] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/Paid/DunegonQuest.lua'))()",
    [92096286] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/TradeLands.lua'))()",
    [2324662457] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/anime%20fighters%20simulator.lua'))()",
    [111958650] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/Arsenal.lua'))()",
    [1318971886] = "loadstring(game:HttpGet('https://pastebin.com/raw/xUGJt9Ry', true))()",
    [703124385] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/TowerOfHell.lua'))()",
    [741590026] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/SteveOnePiece.lua'))()",
    [66654135] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/GAME/main/muder%20mys..2.txt'))()",
    [1342991001] = "loadstring(game:HttpGet('https://pastebin.com/raw/zABEESgr', true))()",
    [1701332290] = "loadstring(game:HttpGet('https://pastebin.com/raw/aY7Z3Nd3', true))()",
    [498490399] = "loadstring(game:HttpGet('https://pastebin.com/raw/EwnNCfin', true))()",
    [1493595237] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/vn%20Piece%20script-obfuscated.lua', true))()",
    [3904583189] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/RoFruitFree.lua', true))()",
    [3359505957] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/CollectAllPetsFree.lua', true))()",
    [648454481] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/GPOFree.lua', true))()",
    [4205109410] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/AnimeDefenseSimulatorFree.lua', true))()",
    [4098816381] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/AnimeSoulSimulatorFree.lua', true))()"
}

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AureusAuthGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local success, res = pcall(function() return syn and syn.protect_gui or gethui end)
if success and res then ScreenGui.Parent = res() else ScreenGui.Parent = CoreGui end

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 340, 0, 220)
MainFrame.Position = UDim2.new(0.5, -170, 0.5, -110)
MainFrame.BackgroundColor3 = Color3.fromRGB(12, 10, 18)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainFrame

local UIBorder = Instance.new("UIStroke")
UIBorder.Thickness = 2
UIBorder.Color = Color3.fromRGB(140, 20, 255)
UIBorder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIBorder.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Position = UDim2.new(0, 0, 0, 10)
Title.BackgroundTransparency = 1
Title.Text = "AUREUS AUTH SYSTEM"
Title.TextColor3 = Color3.fromRGB(240, 240, 240)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.Parent = MainFrame

local SubTitle = Instance.new("TextLabel")
SubTitle.Size = UDim2.new(1, 0, 0, 20)
SubTitle.Position = UDim2.new(0, 0, 0, 45)
SubTitle.BackgroundTransparency = 1
SubTitle.Text = "Please enter your 45-character key"
SubTitle.TextColor3 = Color3.fromRGB(145, 130, 170)
SubTitle.Font = Enum.Font.Gotham
SubTitle.TextSize = 12
SubTitle.Parent = MainFrame

local InputBox = Instance.new("TextBox")
InputBox.Size = UDim2.new(0, 280, 0, 40)
InputBox.Position = UDim2.new(0.5, -140, 0, 85)
InputBox.BackgroundColor3 = Color3.fromRGB(20, 18, 28)
InputBox.BorderSizePixel = 0
InputBox.Text = ""
InputBox.PlaceholderText = "Paste key here..."
InputBox.PlaceholderColor3 = Color3.fromRGB(85, 75, 105)
InputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
InputBox.Font = Enum.Font.Code
InputBox.TextSize = 12
InputBox.ClipsDescendants = true
InputBox.Parent = MainFrame

local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 6)
InputCorner.Parent = InputBox

local InputBorder = Instance.new("UIStroke")
InputBorder.Thickness = 1
InputBorder.Color = Color3.fromRGB(65, 45, 95)
InputBorder.Parent = InputBox

local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Size = UDim2.new(0, 280, 0, 40)
SubmitBtn.Position = UDim2.new(0.5, -140, 0, 145)
SubmitBtn.BackgroundColor3 = Color3.fromRGB(140, 20, 255)
SubmitBtn.BorderSizePixel = 0
SubmitBtn.Text = "SUBMIT KEY"
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.TextSize = 14
SubmitBtn.Parent = MainFrame

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0, 6)
BtnCorner.Parent = SubmitBtn

local function verifyAndGetExpiry(key)
    if string.sub(key, 1, 5) ~= "Free_" or string.len(key) < 45 then
        return nil, "Key Tidak Valid! (Format Salah)"
    end
    local hexTime = string.sub(key, 14, 24)
    local expireTimestamp = tonumber(hexTime, 16)
    if not expireTimestamp then return nil, "Key Rusak / Korup!" end
    local currentTimestamp = os.time() * 1000
    if currentTimestamp > expireTimestamp then return nil, "Key Sudah Expired!" end
    return true, "Success"
end

local function checkDeviceLock(key)
    local fileName = "aureus_auth_lock.txt"
    local success, content = pcall(function() return readfile(fileName) end)
    if success and content then
        local expectedContent = key .. "_" .. UserId
        if content == expectedContent then return true else return false, "Device Mismatch!" end
    else
        pcall(function() writefile(fileName, key .. "_" .. UserId) end)
        return true
    end
end

local function RunNotification(msgText)
    local CoreGUI = game:GetService("CoreGui")
    local TS = game:GetService("TweenService")
    local HIDEUI = get_hidden_gui or gethui
    
    local function Hide_UI(gui)
        if HIDEUI then
            gui["Parent"] = HIDEUI()
        elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
            syn.protect_gui(gui)
            gui["Parent"] = CoreGUI
        elseif CoreGUI:FindFirstChild('RobloxGui') then
            gui["Parent"] = CoreGUI.RobloxGui
        else
            gui["Parent"] = CoreGUI
        end
    end

    local screen_gui = Instance.new("ScreenGui")
    Hide_UI(screen_gui)

    local frame = Instance.new("Frame")
    frame.AnchorPoint = Vector2.new(0.5, 0.949999988079071)
    frame.BackgroundColor3 = Color3.new(1, 1, 1)
    frame.BackgroundTransparency = 1
    frame.BorderColor3 = Color3.new(0, 0, 0)
    frame.BorderSizePixel = 0
    frame.Position = UDim2.new(0.5, 0, 0.954999983, 0)
    frame.Size = UDim2.new(0, 100, 0, 100)
    frame.Visible = true
    frame.Parent = screen_gui

    local uilist_layout = Instance.new("UIListLayout")
    uilist_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
    uilist_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    uilist_layout.Parent = frame
	
    local frame_2 = Instance.new("Frame")
    frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
    frame_2.BorderColor3 = Color3.new(0, 0, 0)
    frame_2.BorderSizePixel = 0
    frame_2.BackgroundTransparency = 1
    frame_2.Size = UDim2.new(0, 100, 0, 0)
    frame_2.Visible = true
    frame_2.Parent = frame
	
    local frame_3 = Instance.new("Frame")
    frame_3.AnchorPoint = Vector2.new(0.5, 1)
    frame_3.AutomaticSize = Enum.AutomaticSize.X
    frame_3.BackgroundColor3 = Color3.fromRGB(15, 12, 22)
    frame_3.BackgroundTransparency = 0.20000000298023224
    frame_3.BorderColor3 = Color3.new(0, 0, 0)
    frame_3.Position = UDim2.new(0.5, 0, 1, 60)
    frame_3.Size = UDim2.new(0, 0, 0, 30)
    frame_3.Visible = true
    frame_3.Parent = frame_2

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0, 6)
    uicorner.Parent = frame_3

    local uipadding = Instance.new("UIPadding")
    uipadding.PaddingBottom = UDim.new(0, 3)
    uipadding.PaddingLeft = UDim.new(0, 3)
    uipadding.PaddingRight = UDim.new(0, 3)
    uipadding.PaddingTop = UDim.new(0, 3)
    uipadding.Parent = frame_3

    local uistroke = Instance.new("UIStroke")
    uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    uistroke.Color = Color3.fromRGB(100, 20, 220)
    uistroke.Parent = frame_3

    local text_label = Instance.new("TextLabel")
    text_label.Font = Enum.Font.Gotham
    text_label.Text = msgText
    text_label.TextColor3 = Color3.fromRGB(210, 190, 240)
    text_label.TextSize = 14
    text_label.AutomaticSize = Enum.AutomaticSize.X
    text_label.BackgroundColor3 = Color3.new(1, 1, 1)
    text_label.BackgroundTransparency = 1
    text_label.BorderColor3 = Color3.new(0, 0, 0)
    text_label.BorderSizePixel = 0
    text_label.Size = UDim2.new(0, 0, 0, 24)
    text_label.Visible = true
    text_label.Parent = frame_3

    local uipadding_2 = Instance.new("UIPadding")
    uipadding_2.PaddingLeft = UDim.new(0, 5)
    uipadding_2.PaddingRight = UDim.new(0, 30)
    uipadding_2.Parent = text_label

    local text_button = Instance.new("TextButton")
    text_button.Font = Enum.Font.SourceSans
    text_button.Text = ""
    text_button.TextColor3 = Color3.new(0, 0, 0)
    text_button.TextSize = 14
    text_button.AnchorPoint = Vector2.new(1, 0.5)
    text_button.BackgroundColor3 = Color3.new(0, 0, 0)
    text_button.BackgroundTransparency = 1
    text_button.BorderColor3 = Color3.new(0, 0, 0)
    text_button.BorderSizePixel = 0
    text_button.Position = UDim2.new(1, 0, 0.5, 0)
    text_button.Size = UDim2.new(0, 24, 0, 24)
    text_button.Visible = true
    text_button.Parent = frame_3

    local uicorner_2 = Instance.new("UICorner")
    uicorner_2.CornerRadius = UDim.new(0, 5)
    uicorner_2.Parent = text_button

    local image_button = Instance.new("ImageButton")
    image_button.Image = "rbxassetid://3926305904"
    image_button.ImageColor3 = Color3.fromRGB(180, 160, 220)
    image_button.ImageRectOffset = Vector2.new(924, 724)
    image_button.ImageRectSize = Vector2.new(36, 36)
    image_button.AnchorPoint = Vector2.new(0.5, 0.5)
    image_button.BackgroundTransparency = 1
    image_button.LayoutOrder = 3
    image_button.Position = UDim2.new(0.5, 0, 0.5, 0)
    image_button.Size = UDim2.new(0, 18, 0, 18)
    image_button.Visible = true
    image_button.ZIndex = 2
    image_button.Parent = text_button

    TS:Create(frame_3, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Position = UDim2.new(0.5, 0, 1, 0) }):Play()
    TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 35) }):Play()

    local function close_notif()
        TS:Create(image_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { ImageTransparency = 1 }):Play()
        TS:Create(text_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TS:Create(text_label, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { TextTransparency = 1 }):Play()
        task.wait(.17)
        TS:Create(frame_3, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TS:Create(uistroke, TweenInfo.new(0.24, Enum.EasingStyle.Quint), { Transparency = 1 }):Play()
        task.wait(.05)
        TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 0) }):Play()
        task.wait(.2)
        frame_2:Destroy()
        screen_gui:Destroy()
    end

    text_button.MouseEnter:Connect(function()
        TS:Create(text_button, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 0.8 }):Play()
        TS:Create(image_button, TweenInfo.new(0.3, Enum.EasingStyle.Quint), { ImageColor3 = Color3.new(0.890196, 0.054902, 0.054902) }):Play()
    end)

    text_button.MouseLeave:Connect(function()
        TS:Create(text_button, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TS:Create(image_button, TweenInfo.new(0.3, Enum.EasingStyle.Quint), { ImageColor3 = Color3.fromRGB(180, 160, 220) }):Play()
    end)

    text_button.MouseButton1Click:Connect(close_notif)
    image_button.MouseButton1Click:Connect(close_notif)
    task.delay(5, close_notif)
end

local function LaunchMainScript()
    local MainGui = Instance.new("ScreenGui")
    MainGui.Name = "AureusGameHub"
    MainGui.ResetOnSpawn = false
    
    local s, r = pcall(function() return syn and syn.protect_gui or gethui end)
    if s and r then MainGui.Parent = r() else MainGui.Parent = CoreGui end
    
    local Panel = Instance.new("Frame")
    Panel.Size = UDim2.new(0, 280, 0, 340)
    Panel.Position = UDim2.new(0.1, 0, 0.3, 0)
    Panel.BackgroundColor3 = Color3.fromRGB(10, 8, 15)
    Panel.BorderSizePixel = 0
    Panel.Active = true
    Panel.Draggable = true
    Panel.Parent = MainGui
    
    local PanelCorner = Instance.new("UICorner")
    PanelCorner.CornerRadius = UDim.new(0, 8)
    PanelCorner.Parent = Panel
    
    local PanelBorder = Instance.new("UIStroke")
    PanelBorder.Thickness = 2
    PanelBorder.Color = Color3.fromRGB(140, 20, 255)
    PanelBorder.Parent = Panel
    
    local Header = Instance.new("TextLabel")
    Header.Size = UDim2.new(1, 0, 0, 35)
    Header.BackgroundTransparency = 1
    Header.Text = "AUREUS MULTI-GAME HUB"
    Header.TextColor3 = Color3.fromRGB(255, 255, 255)
    Header.Font = Enum.Font.GothamBold
    Header.TextSize = 13
    Header.Parent = Panel
    
    local Credit = Instance.new("TextLabel")
    Credit.Size = UDim2.new(1, 0, 0, 15)
    Credit.Position = UDim2.new(0, 0, 0, 30)
    Credit.BackgroundTransparency = 1
    Credit.Text = "Created by Aureus Team"
    Credit.TextColor3 = Color3.fromRGB(140, 120, 180)
    Credit.Font = Enum.Font.SourceSansItalic
    Credit.TextSize = 12
    Credit.Parent = Panel

    local ButtonContainer = Instance.new("ScrollingFrame")
    ButtonContainer.Size = UDim2.new(1, -20, 1, -85)
    ButtonContainer.Position = UDim2.new(0, 10, 0, 55)
    ButtonContainer.BackgroundTransparency = 1
    ButtonContainer.BorderSizePixel = 0
    ButtonContainer.ScrollBarThickness = 4
    ButtonContainer.ScrollBarImageColor3 = Color3.fromRGB(140, 20, 255)
    ButtonContainer.Parent = Panel
    
    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = ButtonContainer
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 6)
    
    UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        ButtonContainer.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
    end)
    
    local function addGameButton(gId, codeStr)
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(1, -5, 0, 38)
        btn.Font = Enum.Font.GothamBold
        btn.TextSize = 11
        btn.Parent = ButtonContainer
        
        local bc = Instance.new("UICorner")
        bc.CornerRadius = UDim.new(0, 5)
        bc.Parent = btn
        
        local bs = Instance.new("UIStroke")
        bs.Thickness = 1
        bs.Parent = btn

        local name = gameNames[gId] or "Unknown Game ("..tostring(gId)..")"
        local isCurrentGame = (gId == CurrentGameId)
        
        if isCurrentGame then
            btn.BackgroundColor3 = Color3.fromRGB(30, 15, 50)
            btn.Text = "🟢 EXECUTE: " .. string.upper(name)
            btn.TextColor3 = Color3.fromRGB(255, 255, 255)
            bs.Color = Color3.fromRGB(140, 20, 255)
            bs.Thickness = 1.5
            btn.LayoutOrder = 0
        else
            btn.BackgroundColor3 = Color3.fromRGB(16, 14, 22)
            btn.Text = string.upper(name)
            btn.TextColor3 = Color3.fromRGB(150, 140, 170)
            bs.Color = Color3.fromRGB(40, 35, 55)
            btn.LayoutOrder = 1
        end
        
        btn.MouseButton1Click:Connect(function()
            if gId ~= game.GameId then
                RunNotification("Not supported game!")
                return
            end

            local themeTween = TweenService:Create(bs, TweenInfo.new(0.2), {Color3 = Color3.fromRGB(0, 255, 127)})
            themeTween:Play()
            task.wait(0.15)
            TweenService:Create(bs, TweenInfo.new(0.2), {Color3 = Color3.fromRGB(140, 20, 255)}):Play()
            
            local execSuccess, execErr = pcall(function()
                assert(loadstring(codeStr))()
            end)
            if not execSuccess then
                print("Execution Error: " .. tostring(execErr))
            end
        end)
    end
    
    for id, loadCode in pairs(list) do
        addGameButton(id, loadCode)
    end
end

SubmitBtn.MouseButton1Click:Connect(function()
    local UserInputKey = InputBox.Text
    SubmitBtn.Text = "CHECKING..."
    SubmitBtn.Active = false
    task.wait(1)
    local isValid, message = verifyAndGetExpiry(UserInputKey)
    if isValid then
        local deviceMatch, deviceMessage = checkDeviceLock(UserInputKey)
        if deviceMatch then
            SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
            SubmitBtn.Text = "ACCESS GRANTED!"
            UIBorder.Color = Color3.fromRGB(0, 200, 100)
            task.wait(1)
            ScreenGui:Destroy()
            LaunchMainScript()
        else
            SubmitBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
            SubmitBtn.Text = "DEVICE MISMATCH!"
            task.wait(1.5)
            LocalPlayer:Kick("\n[Aureus Auth Error]\n" .. deviceMessage)
        end
    else
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
        SubmitBtn.Text = "INVALID KEY!"
        UIBorder.Color = Color3.fromRGB(200, 0, 0)
        task.wait(1.5)
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(140, 20, 255)
        UIBorder.Color = Color3.fromRGB(140, 20, 255)
        SubmitBtn.Text = "SUBMIT KEY"
        SubmitBtn.Active = true
    end
end)