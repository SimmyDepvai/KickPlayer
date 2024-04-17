--[[
██████╗ ██╗ ██████╗██╗  ██╗    ██╗   ██╗██╗   ██╗    ███████╗██████╗  █████╗  ██████╗███████╗
██╔══██╗██║██╔════╝██║  ██║    ██║   ██║██║   ██║    ██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝
██║  ██║██║██║     ███████║    ██║   ██║██║   ██║    ███████╗██████╔╝███████║██║     █████╗  
██║  ██║██║██║     ██╔══██║    ╚██╗ ██╔╝██║   ██║    ╚════██║██╔═══╝ ██╔══██║██║     ██╔══╝  
██████╔╝██║╚██████╗██║  ██║     ╚████╔╝ ╚██████╔╝    ███████║██║     ██║  ██║╚██████╗███████╗
╚═════╝ ╚═╝ ╚═════╝╚═╝  ╚═╝      ╚═══╝   ╚═════╝     ╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝                                                                
Dịch Vụ Space Cảm Ơn Bạn Đã Tin Tưởng Và Sử Dụng Dịch Vụ Của Chúng Tôi, Nếu Thấy Hữu Ít Hãy Chia Sẻ Cho Bạn Bè Của Bạn !!
- Website: simprose.me
- Page: fb.com/dichvuspace
- Facebook Admin: fb.com/minhtien.dino

--// Lưu Ý:
- Không Được Share Hay Crack Mã Nguồn Ngày Cho Ai! Nếu Không Bạn Sẽ Bị Ban IP Khỏi Website Vĩnh Viễn!
- Chúng Tôi Không Nhận Hỗ Trợ Những Mã Nguồn Miễn Phí, Xin Đừng Bảo Vì Sao. Đọc Chính Sách Của Website Tại: https://simprose.me/faq
- Nếu Bạn Edit Source Và Up Web Share Nhớ Obfuscate Script. Nếu Bann Có Tiền Thì Sử Dụng: Lura.Ph, Luarmor.Net | Nếu Bạn Không Có Tiền Thì Dùng: luaobfuscate.com, MoonSec, 77Fuscate,... Nhé!
]]
---///--------------------------------------------------------------\\\---
if _G.Fast_Delay == nil then
	_G.Fast_Delay = 0
end
local ScreenGui1 = Instance.new("ScreenGui")
local ImageButton1 = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local UIStroke = Instance.new("UIStroke")
ScreenGui1.Name = "ImageButton"
ScreenGui1.Parent = game.CoreGui
ScreenGui1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton1.Parent = ScreenGui1
ImageButton1.BackgroundColor3 = Color3.fromRGB(0, 239, 5)
ImageButton1.BorderSizePixel = 0
ImageButton1.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton1.Size = UDim2.new(0, 50, 0, 50)
ImageButton1.Draggable = true
ImageButton1.Image = "rbxassetid://15435099885"
ImageButton1.MouseButton1Down:connect(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)
UICorner.Parent = ImageButton1
UIStroke.Color = Color3.fromRGB(232, 0, 2)
UIStroke.Thickness = 1.5
UIStroke.Parent = ImageButton1
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 132, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
}
UIGradient.Parent = UIStroke

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
		local Tween = TweenService:Create(object, TweenInfo.new(0.15), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

local Update = {}
local pfp = "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=420&height=420&format=png"

function Update:Window(text,logo,keybind)
	local uihide = false
	local abc = false
	local logo = logo or 11804855180
	local currentpage = ""
	local keybind = keybind or Enum.KeyCode.RightControl
	local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
	
	local APPLEXHUB = Instance.new("ScreenGui")
	APPLEXHUB.Name = "Apple Hub"
	APPLEXHUB.Parent = game.CoreGui
	APPLEXHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local Main = Instance.new("Frame")
	Main.Name = "Main"
	Main.Parent = APPLEXHUB
	Main.ClipsDescendants = true
	Main.AnchorPoint = Vector2.new(0.5,0.5)
	Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 0, 0, 0)
	
	Main:TweenSize(UDim2.new(0, 656, 0, 370),"Out","Quad",0.4,true)

	local MCNR = Instance.new("UICorner")
	MCNR.Name = "MCNR"
	MCNR.Parent = Main

	local Top = Instance.new("Frame")
	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(20,20,20)
	Top.Size = UDim2.new(0, 656, 0, 65)

	local TCNR = Instance.new("UICorner")
	TCNR.Name = "TCNR"
	TCNR.Parent = Top

	local Logo = Instance.new("ImageLabel")
	Logo.Name = "Logo"
	Logo.Parent = Top
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1.000
	Logo.Position = UDim2.new(0, 10, 0, 1)
	Logo.Size = UDim2.new(0, 25, 0, 25)
	Logo.Image = "rbxassetid://11804855180"

	local Name = Instance.new("TextLabel")
	Name.Name = "Name"
	Name.Parent = Top
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.Position = UDim2.new(0.0609756112, 0, 0, 0)
	Name.Size = UDim2.new(0, 61, 0, 27)
	Name.Font = Enum.Font.GothamSemibold
	Name.Text = text
	Name.TextColor3 = Color3.fromRGB(225, 225, 225)
	Name.TextSize = 17.000

	local Hub = Instance.new("TextLabel")
	Hub.Name = "Hub"
	Hub.Parent = Top
	Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hub.BackgroundTransparency = 1.000
	Hub.Position = UDim2.new(0, 086, 0, 0)
	Hub.Size = UDim2.new(0, 81, 0, 27)
	Hub.Font = Enum.Font.GothamSemibold
	Hub.Text = "   HUB"
	Hub.TextColor3 = Color3.fromRGB(255, 20, 0)
	Hub.TextSize = 17.000
	Hub.TextXAlignment = Enum.TextXAlignment.Left

        spawn(function()
            while wait() do
                pcall(function()
                    wait(0.1) 
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 0, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 155, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 255, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(0, 255, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(0, 255, 255)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(0, 155, 255)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 0, 255)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 0, 155)}
                    ):Play() 
                    wait(.5)
                end)
            end
        end)

    local DAYHub = Instance.new("TextLabel")
    DAYHub.Name = "DAYHub"
    DAYHub.Parent = Top
    DAYHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DAYHub.BackgroundTransparency = 1.000
    DAYHub.Position = UDim2.new(0.302, 0,0, 0)
    DAYHub.Size = UDim2.new(0, 81, 0, 27)
    DAYHub.Font = Enum.Font.GothamSemibold
    DAYHub.Text = "N/A"
    DAYHub.TextColor3 = Color3.fromRGB(255,255,255)
    DAYHub.TextSize = 13.000
    DAYHub.TextXAlignment = Enum.TextXAlignment.Left
	task.spawn(function()
		while wait() do
		    DAYHub.Text = os.date("%d".." ".."%B".." ".."%Y")
		end
	end)

    local Players = Instance.new("TextLabel")
    Players.Name = "Players"
    Players.Parent = Top
    Players.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Players.BackgroundTransparency = 1.000
    Players.Position = UDim2.new(0, 200,0, 31)
    Players.Size = UDim2.new(0, 81, 0, 27)
    Players.Font = Enum.Font.GothamSemibold
    Players.Text = "N/A"
    Players.TextColor3 = Color3.fromRGB(255,255,255)
    Players.TextSize = 13.000
    Players.TextXAlignment = Enum.TextXAlignment.Left

    task.spawn(function()
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                    if i == 12 then
                        Players.Text = ("Players :".." "..i.." ".."/".." ".."12".." ".."")
                    elseif i == 1 then
                        Players.Text = ("Players :".." "..i.." ".."/".." ".."12")
                    else
                        Players.Text = ("Players :".." "..i.." ".."/".." ".."12")
                    end
                end
            end)
        end
    end)

	local ver1 = Instance.new("TextLabel")
	ver1.Name = "ver"
	ver1.Parent = Top
	ver1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ver1.BackgroundTransparency = 1.000
	ver1.Position = UDim2.new(0.510, 0, 0, 0)
	ver1.Size = UDim2.new(0, 80, 0, 27)
	ver1.Font = Enum.Font.GothamSemibold
	ver1.Text = "N/A"
	ver1.TextColor3 = Color3.fromRGB(255,255,255)
	ver1.TextSize = 13.000
	ver1.TextXAlignment = Enum.TextXAlignment.Left
    task.spawn(function()
	  while wait() do
	   ver1.Text = "Hours: "..os.date("%H")..":"..os.date("%M")..":"..os.date("%S")
	end
end)

	local Ping = Instance.new("TextLabel")
	Ping.Name = "Ping"
	Ping.Parent = Top
	Ping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Ping.BackgroundTransparency = 1.000
	Ping.Position = UDim2.new(0.666, 0,0, 0)
	Ping.Size = UDim2.new(0, 81, 0, 27)
	Ping.Font = Enum.Font.GothamSemibold
	Ping.Text = "N/A"
	Ping.TextColor3 = Color3.fromRGB(255,255,255)
	Ping.TextSize = 13.000
	Ping.TextXAlignment = Enum.TextXAlignment.Left

	local Fps = Instance.new("TextLabel")
	Fps.Name = "Fps"
	Fps.Parent = Top
	Fps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fps.BackgroundTransparency = 1.000
	Fps.Position = UDim2.new(0.900, 0,0, 0)
	Fps.Size = UDim2.new(0, 81, 0, 27)
	Fps.Font = Enum.Font.GothamSemibold
	Fps.Text = "N/A"
	Fps.TextColor3 = Color3.fromRGB(255,255,255)
	Fps.TextSize = 13.000
	Fps.TextXAlignment = Enum.TextXAlignment.Left

local Fps = Instance.new('LocalScript', Fps)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(frame)
Fps.Parent.Text = ("FPS: "..math.round(1/frame)) 
end)

local Ping = Instance.new('LocalScript', Ping)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(ping) 
Ping.Parent.Text = ("Ping: " ..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(math.round(2/ping)))
end)

    local User = Instance.new("Frame")
    User.Name = "User"
    User.Parent = Top
    User.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    User.BackgroundTransparency = 1.000
    User.Position = UDim2.new(0, 0,0, 25)
    User.Size = UDim2.new(0, 125, 0, 40)
    
    local UserText = Instance.new("TextLabel")
    UserText.Name = "UserText"
    UserText.Parent = User
    UserText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UserText.BackgroundTransparency = 1.000
    UserText.Position = UDim2.new(0.4, 0,0, 10)
	UserText.TextColor3 = Color3.fromRGB(255, 255, 255)
    UserText.Size = UDim2.new(0, 80, 0, 20)
    UserText.Font = Enum.Font.GothamSemibold
    UserText.Text = tostring(game.Players.LocalPlayer.Name)

    UserText.TextScaled = true
    UserText.TextSize = 17.000
    UserText.TextWrapped = true
    UserText.TextXAlignment = Enum.TextXAlignment.Left
    
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
    UITextSizeConstraint.Parent = UserText
    UITextSizeConstraint.MaxTextSize = 17
    
    local UserImage = Instance.new("ImageLabel")
    UserImage.Name = "UserImage"
    UserImage.Parent = User
    UserImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
    UserImage.Position = UDim2.new(0, 10, 0, 9)
    UserImage.Size = UDim2.new(0, 25, 0, 25)
    UserImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"
    
    local UserImageCorner = Instance.new("UICorner")
    UserImageCorner.CornerRadius = UDim.new(0, 100)
    UserImageCorner.Name = "UserImageCorner"
    UserImageCorner.Parent = UserImage
    
	local timecock = Instance.new("TextButton")
	timecock.Parent = Top
	timecock.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	timecock.BackgroundTransparency = 1
	timecock.BorderSizePixel = 0
	timecock.Position = UDim2.new(0, 425,0, 44)
	timecock.AnchorPoint = Vector2.new(0.5, 0.5)
	timecock.Size = UDim2.new(0, 140, 0.01, 25)
	timecock.Font = Enum.Font.GothamSemibold
	timecock.Text = "N/Q"
	timecock.TextColor3 = Color3.fromRGB(255, 255, 255)
	timecock.TextSize = 13.000

    function setTime()
        local GameTime = math.floor(workspace.DistributedGameTime+0.5)
        local Hour = math.floor(GameTime/(60^2))%24
        local Minute = math.floor(GameTime/(60^1))%60
        local Second = math.floor(GameTime/(60^0))%60
        timecock.Text = ("Hr(s) : "..Hour.." Min(s) : "..Minute.." Sec(s) : "..Second)
    end
    
    spawn(function()
        while task.wait() do
            pcall(function()
                setTime()
            end)
        end
    end)

	local Tab = Instance.new("Frame")
	Tab.Name = "Tab"
	Tab.Parent = Main
	Tab.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Tab.Position = UDim2.new(0, 5, 0, 71)
	Tab.Size = UDim2.new(0, 140, 0, 295)

	local TCNR = Instance.new("UICorner")
	TCNR.Name = "TCNR"
	TCNR.Parent = Tab

	local ScrollTab = Instance.new("ScrollingFrame")
	ScrollTab.Name = "ScrollTab"
	ScrollTab.Parent = Tab
	ScrollTab.Active = true
	ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollTab.BackgroundTransparency = 1.000
	ScrollTab.Size = UDim2.new(0, 150, 0, 295)
	ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollTab.ScrollBarThickness = 2

	local PLL = Instance.new("UIListLayout")
	PLL.Name = "PLL"
	PLL.Parent = ScrollTab
	PLL.SortOrder = Enum.SortOrder.LayoutOrder
	PLL.Padding = UDim.new(0, 15)

	local PPD = Instance.new("UIPadding")
	PPD.Name = "PPD"
	PPD.Parent = ScrollTab
	PPD.PaddingLeft = UDim.new(0, 10)
	PPD.PaddingTop = UDim.new(0, 10)

	local Page = Instance.new("Frame")
	Page.Name = "Page"
	Page.Parent = Main
	Page.BackgroundColor3 = Color3.fromRGB(20,20,20)
	Page.Position = UDim2.new(0.245, 0,0.193, 0)
	Page.Size = UDim2.new(0, 490, 0, 295)

	local PCNR = Instance.new("UICorner")
	PCNR.Name = "PCNR"
	PCNR.Parent = Page

	local MainPage = Instance.new("Frame")
	MainPage.Name = "MainPage"
	MainPage.Parent = Page
	MainPage.ClipsDescendants = true
	MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainPage.BackgroundTransparency = 1.000
	MainPage.Size = UDim2.new(0, 490, 0, 295)

	local PageList = Instance.new("Folder")
	PageList.Name = "PageList"
	PageList.Parent = MainPage

	local UIPageLayout = Instance.new("UIPageLayout")

	UIPageLayout.Parent = PageList
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
	UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
	UIPageLayout.FillDirection = Enum.FillDirection.Vertical
	UIPageLayout.Padding = UDim.new(0, 15)
	UIPageLayout.TweenTime = 0.400
	UIPageLayout.GamepadInputEnabled = false
	UIPageLayout.ScrollWheelInputEnabled = false
	UIPageLayout.TouchInputEnabled = false
		
	MakeDraggable(Top,Main)

	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode[yoo] then
			if uihide == false then
				uihide = true
				Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
			else
				uihide = false
				Main:TweenSize(UDim2.new(0, 656, 0, 370),"Out","Quad",0.4,true)
			end
		end
	end)

	local uitab = {}
	
	function uitab:Tab(text,img,clr)
		local TabButton = Instance.new("TextButton")
		TabButton.Parent = ScrollTab
		TabButton.Name = text.."Server"
		TabButton.Text = text
		TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.BackgroundTransparency = 1.000
		TabButton.Size = UDim2.new(0, 130, 0, 23)
		TabButton.Font = Enum.Font.GothamSemibold
		TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
		TabButton.TextSize = 15.000
		TabButton.TextTransparency = 0.500

		local PageImage = Instance.new("ImageLabel")
        PageImage.Name = "PageImage"
        PageImage.Parent = TabButton
        PageImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        PageImage.BackgroundTransparency = 1.000
        PageImage.Position = UDim2.new(0, 5, 0, 5)
        PageImage.Size = UDim2.new(0, 19, 0, 19)
        PageImage.Image = "rbxassetid://"..tostring(icon)

		local MainFramePage = Instance.new("ScrollingFrame")
		MainFramePage.Name = text.."_Page"
		MainFramePage.Parent = PageList
		MainFramePage.Active = true
		MainFramePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MainFramePage.BackgroundTransparency = 1.000
		MainFramePage.BorderSizePixel = 0
		MainFramePage.Size = UDim2.new(0, 490, 0, 300)
		MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
		MainFramePage.ScrollBarThickness = 0
		
		local UIPadding = Instance.new("UIPadding")
		local UIListLayout = Instance.new("UIListLayout")
		
		UIPadding.Parent = MainFramePage
		UIPadding.PaddingLeft = UDim.new(0, 10)
		UIPadding.PaddingTop = UDim.new(0, 10)

		UIListLayout.Padding = UDim.new(0,15)
		UIListLayout.Parent = MainFramePage
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		
		TabButton.MouseButton1Click:Connect(function()
			for i,v in next, ScrollTab:GetChildren() do
				if v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end
				TweenService:Create(
					TabButton,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end
			for i,v in next, PageList:GetChildren() do
				currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
				if v.Name == currentpage then
					UIPageLayout:JumpTo(v)
				end
			end
		end)

		if abc == false then
			for i,v in next, ScrollTab:GetChildren() do
				if v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end
				TweenService:Create(
					TabButton,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end
			UIPageLayout:JumpToIndex(1)
			abc = true
		end
		
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
				ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
			end)
		end)
		
		local main = {}
		function main:Button(text,clrb,callback)
			local Button = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextBtn = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Black = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			
			Button.Name = "Button"
			Button.Parent = MainFramePage
			Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Button.Size = UDim2.new(0, 470, 0, 31)		
			
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Button
			
			TextBtn.Name = "TextBtn"
			TextBtn.Parent = Button
			TextBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			TextBtn.Position = UDim2.new(0, 1, 0, 1)
			TextBtn.Size = UDim2.new(0, 468, 0, 29)
			TextBtn.AutoButtonColor = false
			TextBtn.Font = Enum.Font.GothamSemibold
			TextBtn.Text = text
			TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextBtn.TextSize = 15.000

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = TextBtn
			
			Black.Name = "Black"
			Black.Parent = Button
			Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Black.BackgroundTransparency = 1.000
			Black.BorderSizePixel = 0
			Black.Position = UDim2.new(0, 1, 0, 1)
			Black.Size = UDim2.new(0, 468, 0, 29)
			
			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = Black

			TextBtn.MouseEnter:Connect(function()
				TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 0.7}
				):Play()
			end)
			TextBtn.MouseLeave:Connect(function()
				TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 1}
				):Play()
			end)
			TextBtn.MouseButton1Click:Connect(function()
				TextBtn.TextSize = 0
				TweenService:Create(
					TextBtn,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextSize = 15}
				):Play()
				callback()
			end)
		end

		function main:Toggle(text,clr,config,callback)
			config = config or false
			local toggled = config
			local Toggle = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Button = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Label = Instance.new("TextLabel")
			local ToggleImage = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local Circle = Instance.new("Frame")
			local UICorner_4 = Instance.new("UICorner")

			Toggle.Name = "Toggle"
			Toggle.Parent = MainFramePage
			Toggle.BackgroundColor3 = Color3.fromRGB(0,0,0)
			Toggle.Size = UDim2.new(0, 470, 0, 31)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Toggle

			Button.Name = "Button"
			Button.Parent = Toggle
			Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Button.Position = UDim2.new(0, 410, 0, 1)
			Button.Size = UDim2.new(0, 60, 0, 29)
			Button.AutoButtonColor = false
			Button.Font = Enum.Font.SourceSans
			Button.Text = ""
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 11.000

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = Button

			Label.Name = "Label"
			Label.Parent = Toggle
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.Position = UDim2.new(0, 1, 0, 1)
			Label.Size = UDim2.new(0, 468, 0, 29)
			Label.Font = Enum.Font.GothamSemibold
			Label.Text = text
			Label.TextColor3 = Color3.fromRGB(225, 225, 225)
			Label.TextSize = 15.000

			local account_circle = Instance.new("ImageLabel")
            account_circle.Name = "account_circle"
            account_circle.Parent = Toggle
            account_circle.BackgroundTransparency = 1.000
            account_circle.Position = UDim2.new(0, 5, 0, 4)
            account_circle.Size = UDim2.new(0, 24, 0, 21)
            account_circle.ZIndex = 2
            account_circle.Image = "rbxassetid://"
            account_circle.ImageRectOffset = Vector2.new(124, 204)
            account_circle.ImageRectSize = Vector2.new(36, 36)

			ToggleImage.Name = "ToggleImage"
			ToggleImage.Parent = Toggle
			ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
			ToggleImage.Position = UDim2.new(0, 415, 0, 5)
			ToggleImage.Size = UDim2.new(0, 45, 0, 20)

			UICorner_3.CornerRadius = UDim.new(0, 10)
			UICorner_3.Parent = ToggleImage

			Circle.Name = "Circle"
			Circle.Parent = ToggleImage
			Circle.BackgroundColor3 = Color3.fromRGB(227, 60, 60)
			Circle.Position = UDim2.new(0, 2, 0, 2)
			Circle.Size = UDim2.new(0, 16, 0, 16)

			UICorner_4.CornerRadius = UDim.new(0, 10)
			UICorner_4.Parent = Circle

			Button.MouseButton1Click:Connect(function()
				if toggled == false then
					toggled = true
					Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB( 60, 179, 113)}
					):Play()
				else
					toggled = false
					Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(227, 60, 110)}
					):Play()
				end
				pcall(callback,toggled)
			end)

			if config == true then
				toggled = true
				Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.4,true)
				TweenService:Create(
					Circle,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(60, 179, 113)}
				):Play()
				pcall(callback,toggled)
			end
		end
		function main:Dropdown(text,clr,option,callback)
			local isdropping = false
			local Dropdown = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local DropTitle = Instance.new("TextLabel")
			local DropScroll = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local UIPadding = Instance.new("UIPadding")
			local DropButton = Instance.new("TextButton")
			local DropImage = Instance.new("ImageLabel")
			
			Dropdown.Name = "Dropdown"
			Dropdown.Parent = MainFramePage
			Dropdown.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			Dropdown.ClipsDescendants = true
			Dropdown.Size = UDim2.new(0, 470, 0, 31)
			
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Dropdown
			
			DropTitle.Name = "DropTitle"
			DropTitle.Parent = Dropdown
			DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropTitle.BackgroundTransparency = 1.000
			DropTitle.Size = UDim2.new(0, 470, 0, 31)
			DropTitle.Font = Enum.Font.GothamSemibold
			DropTitle.Text = text.. " : "
			DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
			DropTitle.TextSize = 15.000
			
			DropScroll.Name = "DropScroll"
			DropScroll.Parent = DropTitle
			DropScroll.Active = true
			DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropScroll.BackgroundTransparency = 1.000
			DropScroll.BorderSizePixel = 0
			DropScroll.Position = UDim2.new(0, 0, 0, 31)
			DropScroll.Size = UDim2.new(0, 470, 0, 100)
			DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
			DropScroll.ScrollBarThickness = 3
			
			UIListLayout.Parent = DropScroll
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)
			
			UIPadding.Parent = DropScroll
			UIPadding.PaddingLeft = UDim.new(0, 5)
			UIPadding.PaddingTop = UDim.new(0, 5)
			
			DropImage.Name = "DropImage"
			DropImage.Parent = Dropdown
			DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropImage.BackgroundTransparency = 1.000
			DropImage.Position = UDim2.new(0, 445, 0, 6)
			DropImage.Rotation = 180.000
			DropImage.Size = UDim2.new(0, 20, 0, 20)
			DropImage.Image = "rbxassetid://5012539403"
			
			DropButton.Name = "DropButton"
			DropButton.Parent = Dropdown
			DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropButton.BackgroundTransparency = 1.000
			DropButton.Size = UDim2.new(0, 470, 0, 31)
			DropButton.Font = Enum.Font.SourceSans
			DropButton.Text = ""
			DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			DropButton.TextSize = 14.000

			for i,v in next,option do
				local Item = Instance.new("TextButton")

				Item.Name = "Item"
				Item.Parent = DropScroll
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(0, 460, 0, 26)
				Item.Font = Enum.Font.GothamSemibold
				Item.Text = tostring(v)
				Item.TextColor3 = Color3.fromRGB(225, 225, 225)
				Item.TextSize = 13.000
				Item.TextTransparency = 0.500
				local person = Instance.new("ImageLabel")

--Properties:

person.Name = "person"
person.Parent = Item
person.BackgroundTransparency = 1.000
person.LayoutOrder = 6
person.Position = UDim2.new(0, 400, 0, 1)
person.Size = UDim2.new(0, 19, 0, 19)
person.ZIndex = 2
person.Image = "rbxassetid://"
person.ImageTransparency = 0.500
person.ImageRectOffset = Vector2.new(884, 4)
person.ImageRectSize = Vector2.new(36, 36)

				Item.MouseEnter:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				Item.MouseLeave:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end)

				Item.MouseButton1Click:Connect(function()
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
					callback(Item.Text)
					DropTitle.Text = text.." : "..Item.Text
				end)
			end

			DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)

			DropButton.MouseButton1Click:Connect(function()
				if isdropping == false then
					isdropping = true
					Dropdown:TweenSize(UDim2.new(0,470,0,131),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 0}
					):Play()
				else
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
				end
			end)

			local dropfunc = {}
			function dropfunc:Add(t)
				local Item = Instance.new("TextButton")
				Item.Name = "Item"
				Item.Parent = DropScroll
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(0, 470, 0, 26)
				Item.Font = Enum.Font.GothamSemibold
				Item.Text = tostring(t)
				Item.TextColor3 = Color3.fromRGB(225, 225, 225)
				Item.TextSize = 13.000
				Item.TextTransparency = 0.500
				local person = Instance.new("ImageLabel")

--Properties:

person.Name = "person"
person.Parent = Item
person.BackgroundTransparency = 1.000
person.LayoutOrder = 6
person.Position = UDim2.new(0, 400, 0, 1)
person.Size = UDim2.new(0, 19, 0, 19)
person.ZIndex = 2
person.Image = "rbxassetid://"
person.ImageTransparency = 0.500
person.ImageRectOffset = Vector2.new(884, 4)
person.ImageRectSize = Vector2.new(36, 36)

				Item.MouseEnter:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				Item.MouseLeave:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end)

				Item.MouseButton1Click:Connect(function()
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
					callback(Item.Text)
					DropTitle.Text = text.." : "..Item.Text
				end)
			end
			function dropfunc:Clear()
				DropTitle.Text = tostring(text).." : "
				isdropping = false
				Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = 180}
				):Play()
				local person = Instance.new("ImageLabel")

--Properties:

person.Name = "person"
person.Parent = Item
person.BackgroundTransparency = 1.000
person.LayoutOrder = 6
person.Position = UDim2.new(0, 400, 0, 1)
person.Size = UDim2.new(0, 19, 0, 19)
person.ZIndex = 2
person.Image = "rbxassetid://"
person.ImageTransparency = 0.500
person.ImageRectOffset = Vector2.new(884, 4)
person.ImageRectSize = Vector2.new(36, 36)
				for i,v in next, DropScroll:GetChildren() do
					if v:IsA("TextButton") then
						v:Destroy()
					end
				end
			end
			return dropfunc
		end

		function main:Slider(text,clr,min,max,set,callback)
			local Slider = Instance.new("Frame")
			local slidercorner = Instance.new("UICorner")
			local sliderr = Instance.new("Frame")
			local sliderrcorner = Instance.new("UICorner")
			local SliderLabel = Instance.new("TextLabel")
			local HAHA = Instance.new("Frame")
			local AHEHE = Instance.new("TextButton")
			local bar = Instance.new("Frame")
			local bar1 = Instance.new("Frame")
			local bar1corner = Instance.new("UICorner")
			local barcorner = Instance.new("UICorner")
			local circlebar = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local slidervalue = Instance.new("Frame")
			local valuecorner = Instance.new("UICorner")
			local TextBox = Instance.new("TextBox")
			local UICorner_2 = Instance.new("UICorner")

			Slider.Name = "Slider"
			Slider.Parent = MainFramePage
			Slider.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Slider.BackgroundTransparency = 0
			Slider.Size = UDim2.new(0, 470, 0, 51)

			slidercorner.CornerRadius = UDim.new(0, 5)
			slidercorner.Name = "slidercorner"
			slidercorner.Parent = Slider

			sliderr.Name = "sliderr"
			sliderr.Parent = Slider
			sliderr.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			sliderr.Position = UDim2.new(0, 1, 0, 1)
			sliderr.Size = UDim2.new(0, 468, 0, 49)

			sliderrcorner.CornerRadius = UDim.new(0, 5)
			sliderrcorner.Name = "sliderrcorner"
			sliderrcorner.Parent = sliderr

			SliderLabel.Name = "SliderLabel"
			SliderLabel.Parent = sliderr
			SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderLabel.BackgroundTransparency = 1.000
			SliderLabel.Position = UDim2.new(0, 15, 0, 0)
			SliderLabel.Size = UDim2.new(0, 180, 0, 26)
			SliderLabel.Font = Enum.Font.GothamSemibold
			SliderLabel.Text = text
			SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
			SliderLabel.TextSize = 16.000
			SliderLabel.TextTransparency = 0
			SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

			HAHA.Name = "HAHA"
			HAHA.Parent = sliderr
			HAHA.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			HAHA.BackgroundTransparency = 1.000
			HAHA.Size = UDim2.new(0, 468, 0, 29)

			AHEHE.Name = "AHEHE"
			AHEHE.Parent = sliderr
			AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			AHEHE.BackgroundTransparency = 1.000
			AHEHE.Position = UDim2.new(0, 10, 0, 35)
			AHEHE.Size = UDim2.new(0, 448, 0, 5)
			AHEHE.Font = Enum.Font.SourceSans
			AHEHE.Text = ""
			AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
			AHEHE.TextSize = 14.000

			bar.Name = "bar"
			bar.Parent = AHEHE
			bar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			bar.Size = UDim2.new(0, 448, 0, 5)

			bar1.Name = "bar1"
			bar1.Parent = bar
			bar1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			bar1.BackgroundTransparency = 0
			bar1.Size = UDim2.new(set/max, 0, 0, 5)

			bar1corner.CornerRadius = UDim.new(0, 5)
			bar1corner.Name = "bar1corner"
			bar1corner.Parent = bar1

			barcorner.CornerRadius = UDim.new(0, 5)
			barcorner.Name = "barcorner"
			barcorner.Parent = bar

			circlebar.Name = "circlebar"
			circlebar.Parent = bar1
			circlebar.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
			circlebar.Position = UDim2.new(1, -2, 0, -3)
			circlebar.Size = UDim2.new(0, 10, 0, 10)

			UICorner.CornerRadius = UDim.new(0, 100)
			UICorner.Parent = circlebar

			slidervalue.Name = "slidervalue"
			slidervalue.Parent = sliderr
			slidervalue.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			slidervalue.BackgroundTransparency = 0
			slidervalue.Position = UDim2.new(0, 395, 0, 5)
			slidervalue.Size = UDim2.new(0, 65, 0, 18)

			valuecorner.CornerRadius = UDim.new(0, 5)
			valuecorner.Name = "valuecorner"
			valuecorner.Parent = slidervalue

			TextBox.Parent = slidervalue
			TextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			TextBox.Position = UDim2.new(0, 1, 0, 1)
			TextBox.Size = UDim2.new(0, 63, 0, 16)
			TextBox.Font = Enum.Font.GothamSemibold
			TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextBox.TextSize = 9.000
			TextBox.Text = set
			TextBox.TextTransparency = 0

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = TextBox

			local mouse = game.Players.LocalPlayer:GetMouse()
			local uis = game:GetService("UserInputService")

			if Value == nil then
				Value = set
				pcall(function()
					callback(Value)
				end)
			end
			
			AHEHE.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
				pcall(function()
					callback(Value)
				end)
				bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
				circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
				moveconnection = mouse.Move:Connect(function()
					TextBox.Text = Value
					Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
					pcall(function()
						callback(Value)
					end)
					bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
					circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
						pcall(function()
							callback(Value)
						end)
						bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
						circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
					end
				end)
			end)
			releaseconnection = uis.InputEnded:Connect(function(Mouse)
				if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
					Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
					TextBox.Text = Value
				end
			end)

			TextBox.FocusLost:Connect(function()
				if tonumber(TextBox.Text) > max then
					TextBox.Text  = max
				end
				bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
				circlebar.Position = UDim2.new(1, -2, 0, -3)
				TextBox.Text = tostring(TextBox.Text and math.floor( (TextBox.Text / max) * (max - min) + min) )
				pcall(callback, TextBox.Text)
			end)
		end

		function main:Textbox(text,clr,min,max,set,callback)
			local Textbox = Instance.new("Frame")
			local TextboxCorner = Instance.new("UICorner")
			local Textboxx = Instance.new("Frame")
			local TextboxxCorner = Instance.new("UICorner")
			local TextboxLabel = Instance.new("TextLabel")
			local txtbtn = Instance.new("TextButton")
			local RealTextbox = Instance.new("TextBox")
			local UICorner = Instance.new("UICorner")

			Textbox.Name = "Textbox"
			Textbox.Parent = MainFramePage
			Textbox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Textbox.BackgroundTransparency = 0
			Textbox.Size = UDim2.new(0, 470, 0, 31)

			TextboxCorner.CornerRadius = UDim.new(0, 5)
			TextboxCorner.Name = "TextboxCorner"
			TextboxCorner.Parent = Textbox

			Textboxx.Name = "Textboxx"
			Textboxx.Parent = Textbox
			Textboxx.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			Textboxx.Position = UDim2.new(0, 1, 0, 1)
			Textboxx.Size = UDim2.new(0, 468, 0, 29)

			TextboxxCorner.CornerRadius = UDim.new(0, 5)
			TextboxxCorner.Name = "TextboxxCorner"
			TextboxxCorner.Parent = Textboxx

			TextboxLabel.Name = "TextboxLabel"
			TextboxLabel.Parent = Textbox
			TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextboxLabel.BackgroundTransparency = 1.000
			TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
			TextboxLabel.Text = text
			TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
			TextboxLabel.Font = Enum.Font.GothamSemibold
			TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextboxLabel.TextSize = 16.000
			TextboxLabel.TextTransparency = 0
			TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left

			txtbtn.Name = "txtbtn"
			txtbtn.Parent = Textbox
			txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			txtbtn.BackgroundTransparency = 1.000
			txtbtn.Position = UDim2.new(0, 1, 0, 1)
			txtbtn.Size = UDim2.new(0, 468, 0, 29)
			txtbtn.Font = Enum.Font.SourceSans
			txtbtn.Text = ""
			txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
			txtbtn.TextSize = 14.000

			RealTextbox.Name = "RealTextbox"
			RealTextbox.Parent = Textbox
			RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			RealTextbox.BackgroundTransparency = 0
			RealTextbox.Position = UDim2.new(0, 360, 0, 4)
			RealTextbox.Size = UDim2.new(0, 100, 0, 24)
			RealTextbox.Font = Enum.Font.GothamSemibold
			RealTextbox.Text = ""
			RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
			RealTextbox.TextSize = 11.000
			RealTextbox.TextTransparency = 0

			RealTextbox.FocusLost:Connect(function()
				callback(RealTextbox.Text)
				if disappear then
					RealTextbox.Text = ""
				end
			end)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = RealTextbox
		end
		function main:Label(text,color)
			local Label = Instance.new("TextLabel")
			local PaddingLabel = Instance.new("UIPadding")
			local labelfunc = {}
	
			Label.Name = "Label"
			Label.Parent = MainFramePage
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.Size = UDim2.new(0, 470, 0, 20)
			Label.Font = Enum.Font.GothamSemibold
			Label.TextColor3 = Color3.fromRGB(225, 225, 225)
			Label.TextSize = 16.000
			Label.Text = text
			Label.TextXAlignment = Enum.TextXAlignment.Left

			PaddingLabel.PaddingLeft = UDim.new(0,15)
			PaddingLabel.Parent = Label
			PaddingLabel.Name = "PaddingLabel"
	
			function labelfunc:Set(newtext)
				Label.Text = newtext
			end
			return labelfunc
		end

        function main:Label1(text)

local Label1 = Instance.new("TextLabel")
local PaddingLabel1 = Instance.new("UIPadding")
local Label1func = {}

Label1.Name = "Label1"
Label1.Parent = MainFramePage
Label1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label1.BackgroundTransparency = 1.000
Label1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Label1.BorderSizePixel = 0
Label1.Size = UDim2.new(0.976000011, 0, -0.00400000019, 30)
Label1.Font = Enum.Font.Ubuntu
Label1.Text = text
Label1.TextColor3 = Color3.fromRGB(255,255,255)
Label1.TextSize = 16.000
Label1.TextXAlignment = Enum.TextXAlignment.Left

PaddingLabel1.Name = "PaddingLabel1"
PaddingLabel1.Parent = Label1
PaddingLabel1.PaddingLeft = UDim.new(0, 1)
function Label1func:Refresh(tochange)
   Label1.Text = tochange
end
   return Label1func
end

function main:LabelIMG(text,img,color)

    local Label2 = Instance.new("TextLabel")
    local PaddingLabel2 = Instance.new("UIPadding")
    local TabImages = Instance.new("ImageLabel")
    local label2func = {}
    
    Label2.Name = "Label"
    Label2.Parent = MainFramePage
    Label2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Label2.BackgroundTransparency = 1.000
    Label2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Label2.BorderSizePixel = 0
    Label2.Size = UDim2.new(0.976000011, 0, -0.00400000019, 30)
    Label2.Font = Enum.Font.Ubuntu
    Label2.TextColor3 = color or Color3.fromRGB(255,255,255)
    Label2.Text = text
    Label2.TextSize = 16.000
    Label2.TextXAlignment = Enum.TextXAlignment.Left

    TabImages.Name = text or "TabImage"
    TabImages.Parent = Label2
    TabImages.BackgroundColor3 = _G.Color
    TabImages.BackgroundTransparency = 1.000
    TabImages.Position = UDim2.new(0,0,0,1)
    TabImages.Size = UDim2.new(0, 18, 0, 18)
    TabImages.Image = img or "rbxassetid://8666601749"
 
    PaddingLabel2.Name = "PaddingLabel"
    PaddingLabel2.Parent = Label2
    PaddingLabel2.PaddingLeft = UDim.new(0, 1)
    
    function label2func:Set(newtext,newcolor)
     Label2.Text = newtext
     Label2.TextColor3 = newcolor
  end
     return label2func
  end

  function main:LabelWarn(text)

    local Labela = Instance.new("TextLabel")
    local PaddingLabela = Instance.new("UIPadding")
    local labelafunc = {}
    
    Labela.Name = "Label"
    Labela.Parent = MainFramePage
    Labela.BackgroundColor3 = Color3.fromRGB(255,255,255)
    Labela.BackgroundTransparency = 1.000
    Labela.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Labela.BorderSizePixel = 0
    Labela.Size = UDim2.new(0.976000011, 0, -0.00400000019, 30)
    Labela.Font = Enum.Font.Ubuntu
    Labela.TextColor3 = Color3.fromRGB(255,255,0)
    Labela.Text = text
    Labela.TextSize = 16.000
    Labela.TextXAlignment = Enum.TextXAlignment.Center
 
    PaddingLabela.Name = "PaddingLabel"
    PaddingLabela.Parent = Label
    PaddingLabela.PaddingLeft = UDim.new(0, 1)
    
    function labelafunc:Set(newtext)
     Labela.Text = newtext
  end
     return labelfunc
  end

		function main:Seperator(text,color)
			local Seperator = Instance.new("Frame")
			local Sep1 = Instance.new("Frame")
			local Sep2 = Instance.new("TextLabel")
			local Sep3 = Instance.new("Frame")
			
			Seperator.Name = "Seperator"
			Seperator.Parent = MainFramePage
			Seperator.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Seperator.BackgroundTransparency = 1.000
			Seperator.Size = UDim2.new(0, 470, 0, 20)
			
			Sep1.Name = "Sep1"
			Sep1.Parent = Seperator
			Sep1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Sep1.BorderSizePixel = 0
			Sep1.Position = UDim2.new(0, 0, 0, 10)
			Sep1.Size = UDim2.new(0, 80, 0, 1)
			
			Sep2.Name = "Sep2"
			Sep2.Parent = Seperator
			Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Sep2.BackgroundTransparency = 1.000
			Sep2.Position = UDim2.new(0, 185, 0, 0)
			Sep2.Size = UDim2.new(0, 100, 0, 20)
			Sep2.Font = Enum.Font.GothamSemibold
			Sep2.Text = text
			Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Sep2.TextSize = 14.000
			
			Sep3.Name = "Sep3"
			Sep3.Parent = Seperator
			Sep3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Sep3.BorderSizePixel = 0
			Sep3.Position = UDim2.new(0, 390, 0, 10)
			Sep3.Size = UDim2.new(0, 80, 0, 1)
		end

		function main:Line()
			local Linee = Instance.new("Frame")
			local Line = Instance.new("Frame")
			
			Linee.Name = "Linee"
			Linee.Parent = MainFramePage
			Linee.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Linee.BackgroundTransparency = 1.000
			Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
			Linee.Size = UDim2.new(0, 470, 0, 20)
			
			Line.Name = "Line"
			Line.Parent = Linee
			Line.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Line.BorderSizePixel = 0
			Line.Position = UDim2.new(0, 0, 0, 10)
			Line.Size = UDim2.new(0, 470, 0, 1)
		end
		return main
	end
	return uitab
end

if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end

function TelePBoss()
end

	function CheckLevel2() 
        MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
        if World1 then
            if MyLevel == 1 or MyLevel <= 9 then
                Mon = "Bandit"
                LevelQuest = 1
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
                CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
            elseif MyLevel == 10 or MyLevel <= 14 then
                Mon = "Monkey"
                LevelQuest = 1
                NameQuest = "JungleQuest"
                NameMon = "Monkey"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
            elseif MyLevel == 15 or MyLevel <= 29 then
                Mon = "Gorilla"
                LevelQuest = 2
                NameQuest = "JungleQuest"
                NameMon = "Gorilla"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
            elseif MyLevel == 30 or MyLevel <= 39 then
                Mon = "Pirate"
                LevelQuest = 1
                NameQuest = "BuggyQuest1"
                NameMon = "Pirate"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
            elseif MyLevel == 40 or MyLevel <= 59 then
                Mon = "Brute"
                LevelQuest = 2
                NameQuest = "BuggyQuest1"
                NameMon = "Brute"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
            elseif MyLevel == 60 or MyLevel <= 74 then
                Mon = "Desert Bandit"
                LevelQuest = 1
                NameQuest = "DesertQuest"
                NameMon = "Desert Bandit"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
            elseif MyLevel == 75 or MyLevel <= 89 then
                Mon = "Desert Officer"
                LevelQuest = 2
                NameQuest = "DesertQuest"
                NameMon = "Desert Officer"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
            elseif MyLevel == 90 or MyLevel <= 99 then
                Mon = "Snow Bandit"
                LevelQuest = 1
                NameQuest = "SnowQuest"
                NameMon = "Snow Bandit"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
            elseif MyLevel == 100 or MyLevel <= 119 then
                Mon = "Snowman"
                LevelQuest = 2
                NameQuest = "SnowQuest"
                NameMon = "Snowman"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
            elseif MyLevel == 120 or MyLevel <= 149 then
                Mon = "Chief Petty Officer"
                LevelQuest = 1
                NameQuest = "MarineQuest2"
                NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
            elseif MyLevel == 150 or MyLevel <= 174 then
                Mon = "Sky Bandit"
                LevelQuest = 1
                NameQuest = "SkyQuest"
                NameMon = "Sky Bandit"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
            elseif MyLevel == 175 or MyLevel <= 189 then
                Mon = "Dark Master"
                LevelQuest = 2
                NameQuest = "SkyQuest"
                NameMon = "Dark Master"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
            elseif MyLevel == 190 or MyLevel <= 209 then
                Mon = "Prisoner"
                LevelQuest = 1
                NameQuest = "PrisonerQuest"
                NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
            elseif MyLevel == 210 or MyLevel <= 249 then
                Mon = "Dangerous Prisoner"
                LevelQuest = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            elseif MyLevel == 250 or MyLevel <= 274 then
                Mon = "Toga Warrior"
                LevelQuest = 1
                NameQuest = "ColosseumQuest"
                NameMon = "Toga Warrior"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
            elseif MyLevel == 275 or MyLevel <= 299 then
                Mon = "Gladiator"
                LevelQuest = 2
                NameQuest = "ColosseumQuest"
                NameMon = "Gladiator"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
            elseif MyLevel == 300 or MyLevel <= 324 then
                Mon = "Military Soldier"
                LevelQuest = 1
                NameQuest = "MagmaQuest"
                NameMon = "Military Soldier"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
            elseif MyLevel == 325 or MyLevel <= 374 then
                Mon = "Military Spy"
                LevelQuest = 2
                NameQuest = "MagmaQuest"
                NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
            elseif MyLevel == 375 or MyLevel <= 399 then
                Mon = "Fishman Warrior"
                LevelQuest = 1
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Warrior"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 400 or MyLevel <= 449 then
                Mon = "Fishman Commando"
                LevelQuest = 2
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 450 or MyLevel <= 474 then
                Mon = "God's Guard"
                LevelQuest = 1
                NameQuest = "SkyExp1Quest"
                NameMon = "God's Guard"
                CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
                CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
            elseif MyLevel == 475 or MyLevel <= 524 then
                Mon = "Shanda"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Shanda"
                CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            elseif MyLevel == 525 or MyLevel <= 549 then
                Mon = "Royal Squad"
                LevelQuest = 1
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Squad"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
            elseif MyLevel == 550 or MyLevel <= 624 then
                Mon = "Royal Soldier"
                LevelQuest = 2
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
            elseif MyLevel == 625 or MyLevel <= 649 then
                Mon = "Galley Pirate"
                LevelQuest = 1
                NameQuest = "FountainQuest"
                NameMon = "Galley Pirate"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
            elseif MyLevel >= 650 then
                Mon = "Galley Captain"
                LevelQuest = 2
                NameQuest = "FountainQuest"
                NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
            end
        elseif World2 then
            if MyLevel == 700 or MyLevel <= 724 then
                Mon = "Raider"
                LevelQuest = 1
                NameQuest = "Area1Quest"
                NameMon = "Raider"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
            elseif MyLevel == 725 or MyLevel <= 774 then
                Mon = "Mercenary"
                LevelQuest = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            elseif MyLevel == 775 or MyLevel <= 799 then
                Mon = "Swan Pirate"
                LevelQuest = 1
                NameQuest = "Area2Quest"
                NameMon = "Swan Pirate"
                CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
            elseif MyLevel == 800 or MyLevel <= 874 then
                Mon = "Factory Staff"
                NameQuest = "Area2Quest"
                LevelQuest = 2
                NameMon = "Factory Staff"
                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
            elseif MyLevel == 875 or MyLevel <= 899 then
                Mon = "Marine Lieutenant"
                LevelQuest = 1
                NameQuest = "MarineQuest3"
                NameMon = "Marine Lieutenant"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
            elseif MyLevel == 900 or MyLevel <= 949 then
                Mon = "Marine Captain"
                LevelQuest = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
            elseif MyLevel == 950 or MyLevel <= 974 then
                Mon = "Zombie"
                LevelQuest = 1
                NameQuest = "ZombieQuest"
                NameMon = "Zombie"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
            elseif MyLevel == 975 or MyLevel <= 999 then
                Mon = "Vampire"
                LevelQuest = 2
                NameQuest = "ZombieQuest"
                NameMon = "Vampire"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
            elseif MyLevel == 1000 or MyLevel <= 1049 then
                Mon = "Snow Trooper"
                LevelQuest = 1
                NameQuest = "SnowMountainQuest"
                NameMon = "Snow Trooper"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
            elseif MyLevel == 1050 or MyLevel <= 1099 then
                Mon = "Winter Warrior"
                LevelQuest = 2
                NameQuest = "SnowMountainQuest"
                NameMon = "Winter Warrior"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
            elseif MyLevel == 1100 or MyLevel <= 1124 then
                Mon = "Lab Subordinate"
                LevelQuest = 1
                NameQuest = "IceSideQuest"
                NameMon = "Lab Subordinate"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
            elseif MyLevel == 1125 or MyLevel <= 1174 then
                Mon = "Horned Warrior"
                LevelQuest = 2
                NameQuest = "IceSideQuest"
                NameMon = "Horned Warrior"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
            elseif MyLevel == 1175 or MyLevel <= 1199 then
                Mon = "Magma Ninja"
                LevelQuest = 1
                NameQuest = "FireSideQuest"
                NameMon = "Magma Ninja"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
            elseif MyLevel == 1200 or MyLevel <= 1249 then
                Mon = "Lava Pirate"
                LevelQuest = 2
                NameQuest = "FireSideQuest"
                NameMon = "Lava Pirate"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
            elseif MyLevel == 1250 or MyLevel <= 1274 then
                Mon = "Ship Deckhand"
                LevelQuest = 1
                NameQuest = "ShipQuest1"
                NameMon = "Ship Deckhand"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
                CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1275 or MyLevel <= 1299 then
                Mon = "Ship Engineer"
                LevelQuest = 2
                NameQuest = "ShipQuest1"
                NameMon = "Ship Engineer"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
                CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end             
            elseif MyLevel == 1300 or MyLevel <= 1324 then
                Mon = "Ship Steward"
                LevelQuest = 1
                NameQuest = "ShipQuest2"
                NameMon = "Ship Steward"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
                CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1325 or MyLevel <= 1349 then
                Mon = "Ship Officer"
                LevelQuest = 2
                NameQuest = "ShipQuest2"
                NameMon = "Ship Officer"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1350 or MyLevel <= 1374 then
                Mon = "Arctic Warrior"
                LevelQuest = 1
                NameQuest = "FrostQuest"
                NameMon = "Arctic Warrior"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
                end
            elseif MyLevel == 1375 or MyLevel <= 1424 then
                Mon = "Snow Lurker"
                LevelQuest = 2
                NameQuest = "FrostQuest"
                NameMon = "Snow Lurker"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
            elseif MyLevel == 1425 or MyLevel <= 1449 then
                Mon = "Sea Soldier"
                LevelQuest = 1
                NameQuest = "ForgottenQuest"
                NameMon = "Sea Soldier"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
            elseif MyLevel >= 1450 then
                Mon = "Water Fighter"
                LevelQuest = 2
                NameQuest = "ForgottenQuest"
                NameMon = "Water Fighter"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
            end
        elseif World3 then
            if MyLevel == 1500 or MyLevel <= 1524 then
                Mon = "Pirate Millionaire"
                LevelQuest = 1
                NameQuest = "PiratePortQuest"
                NameMon = "Pirate Millionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
            elseif MyLevel == 1525 or MyLevel <= 1574 then
                Mon = "Pistol Billionaire"
                LevelQuest = 2
                NameQuest = "PiratePortQuest"
                NameMon = "Pistol Billionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
            elseif MyLevel == 1575 or MyLevel <= 1599 then
                Mon = "Dragon Crew Warrior"
                LevelQuest = 1
                NameQuest = "AmazonQuest"
                NameMon = "Dragon Crew Warrior"
                CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
            elseif MyLevel == 1600 or MyLevel <= 1624 then 
                Mon = "Dragon Crew Archer"
                NameQuest = "AmazonQuest"
                LevelQuest = 2
                NameMon = "Dragon Crew Archer"
                CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
                CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
            elseif MyLevel == 1625 or MyLevel <= 1649 then
                Mon = "Female Islander"
                NameQuest = "AmazonQuest2"
                LevelQuest = 1
                NameMon = "Female Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
            elseif MyLevel == 1650 or MyLevel <= 1699 then 
                Mon = "Giant Islander"
                NameQuest = "AmazonQuest2"
                LevelQuest = 2
                NameMon = "Giant Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
            elseif MyLevel == 1700 or MyLevel <= 1724 then
                Mon = "Marine Commodore"
                LevelQuest = 1
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Commodore"
                CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
            elseif MyLevel == 1725 or MyLevel <= 1774 then
                Mon = "Marine Rear Admiral"
                NameMon = "Marine Rear Admiral"
                NameQuest = "MarineTreeIsland"
                LevelQuest = 2
                CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
            elseif MyLevel == 1775 or MyLevel <= 1799 then
                Mon = "Fishman Raider"
                LevelQuest = 1
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Raider"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
            elseif MyLevel == 1800 or MyLevel <= 1824 then
                Mon = "Fishman Captain"
                LevelQuest = 2
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Captain"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
            elseif MyLevel == 1825 or MyLevel <= 1849 then
                Mon = "Forest Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland"
                NameMon = "Forest Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
            elseif MyLevel == 1850 or MyLevel <= 1899 then
                Mon = "Mythological Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland"
                NameMon = "Mythological Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
                CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
            elseif MyLevel == 1900 or MyLevel <= 1924 then
                Mon = "Jungle Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland2"
                NameMon = "Jungle Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
            elseif MyLevel == 1925 or MyLevel <= 1974 then
                Mon = "Musketeer Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland2"
                NameMon = "Musketeer Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
            elseif MyLevel == 1975 or MyLevel <= 1999 then
                Mon = "Reborn Skeleton"
                LevelQuest = 1
                NameQuest = "HauntedQuest1"
                NameMon = "Reborn Skeleton"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
            elseif MyLevel == 2000 or MyLevel <= 2024 then
                Mon = "Living Zombie"
                LevelQuest = 2
                NameQuest = "HauntedQuest1"
                NameMon = "Living Zombie"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
            elseif MyLevel == 2025 or MyLevel <= 2049 then
                Mon = "Demonic Soul"
                LevelQuest = 1
                NameQuest = "HauntedQuest2"
                NameMon = "Demonic Soul"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
                CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
            elseif MyLevel == 2050 or MyLevel <= 2074 then
                Mon = "Posessed Mummy"
                LevelQuest = 2
                NameQuest = "HauntedQuest2"
                NameMon = "Posessed Mummy"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
            elseif MyLevel == 2075 or MyLevel <= 2099 then
                Mon = "Peanut Scout"
                LevelQuest = 1
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut Scout"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
            elseif MyLevel == 2100 or MyLevel <= 2124 then
                Mon = "Peanut President"
                LevelQuest = 2
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut President"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
            elseif MyLevel == 2125 or MyLevel <= 2149 then
                Mon = "Ice Cream Chef"
                LevelQuest = 1
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Chef"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
            elseif MyLevel == 2150 or MyLevel <= 2199 then
                Mon = "Ice Cream Commander"
                LevelQuest = 2
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Commander"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
            elseif MyLevel == 2200 or MyLevel <= 2224 then
                Mon = "Cookie Crafter"
                LevelQuest = 1
                NameQuest = "CakeQuest1"
                NameMon = "Cookie Crafter"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
            elseif MyLevel == 2225 or MyLevel <= 2249 then
                Mon = "Cake Guard"
                LevelQuest = 2
                NameQuest = "CakeQuest1"
                NameMon = "Cake Guard"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
            elseif MyLevel == 2250 or MyLevel <= 2274 then
                Mon = "Baking Staff"
                LevelQuest = 1
                NameQuest = "CakeQuest2"
                NameMon = "Baking Staff"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
            elseif MyLevel == 2275 or MyLevel <= 2299 then
                Mon = "Head Baker"
                LevelQuest = 2
                NameQuest = "CakeQuest2"
                NameMon = "Head Baker"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
            elseif MyLevel == 2300 or MyLevel <= 2324 then
                Mon = "Cocoa Warrior"
                LevelQuest = 1
                NameQuest = "ChocQuest1"
                NameMon = "Cocoa Warrior"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
            elseif MyLevel == 2325 or MyLevel <= 2349 then
                Mon = "Chocolate Bar Battler"
                LevelQuest = 2
                NameQuest = "ChocQuest1"
                NameMon = "Chocolate Bar Battler"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
            elseif MyLevel == 2350 or MyLevel <= 2374 then
                Mon = "Sweet Thief"
                LevelQuest = 1
                NameQuest = "ChocQuest2"
                NameMon = "Sweet Thief"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
            elseif MyLevel == 2375 or MyLevel <= 2399 then
                Mon = "Candy Rebel"
                LevelQuest = 2
                NameQuest = "ChocQuest2"
                NameMon = "Candy Rebel"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
            elseif MyLevel == 2400 or MyLevel <= 2449 then
                Mon = "Candy Pirate"
                LevelQuest = 1
                NameQuest = "CandyQuest1"
                NameMon = "Candy Pirate"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
            elseif MyLevel == 2450 or MyLevel <= 2474 then
                Mon = "Isle Outlaw"
                LevelQuest = 1
                NameQuest = "TikiQuest1"
                NameMon = "Isle Outlaw"
                CFrameQuest = CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
                CFrameMon = CFrame.new(-16479.900390625, 226.6117401123047, -300.3114318847656)
            elseif MyLevel == 2475 or MyLevel <= 2499 then
                Mon = "Island Boy"
                LevelQuest = 2
                NameQuest = "TikiQuest1"
                NameMon = "Island Boy"
                CFrameQuest = CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
                CFrameMon = CFrame.new(-16849.396484375, 192.86505126953125, -150.7853240966797)
            elseif MyLevel == 2500 or MyLevel <= 2524 then
                Mon = "Sun-kissed Warrior"
                LevelQuest = 1
                NameQuest = "TikiQuest2"
                NameMon = "kissed Warrior"
                CFrameMon = CFrame.new(-16347, 64, 984)
                CFrameQuest = CFrame.new(-16538, 55, 1049)
            elseif MyLevel >= 2525 then
                Mon = "Isle Champion"
                LevelQuest = 2
                NameQuest = "TikiQuest2"
                NameMon = "Isle Champion"
                CFrameQuest = CFrame.new(-16541.0215, 57.3082275, 1051.46118, 0.0410757065, -0, -0.999156058, 0, 1, -0, 0.999156058, 0, 0.0410757065) 
                CFrameMon = CFrame.new(-16602.1015625, 130.38734436035156, 1087.24560546875) 
            end
        end
    end
    
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
    local Site;
    if foundAnything == "" then
    Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
    Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
    foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
    local Possible = true
    ID = tostring(v.id)
    if tonumber(v.maxPlayers) > tonumber(v.playing) then
    for _,Existing in pairs(AllIDs) do
    if num ~= 0 then
    if ID == tostring(Existing) then
    Possible = false
    end
    else
    if tonumber(actualHour) ~= tonumber(Existing) then
    local delFile = pcall(function()
    AllIDs = {}
    table.insert(AllIDs, actualHour)
    end)
    end
    end
    num = num + 1
    end
    if Possible == true then
    table.insert(AllIDs, ID)
    wait()
    pcall(function()
    wait()
    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
    end)
    wait(4)
    end
    end
    end
    end
    function Teleport()
    while wait() do
    pcall(function()
    TPReturner()
    if foundAnything ~= "" then
    TPReturner()
    end
    end)
    end
    end
    Teleport()
end
    
function isnil(thing)
    return (thing == nil)
    end
    local function round(n)
    return math.floor(tonumber(n) + 0.5)
    end
    Number = math.random(1, 1000000)
    function UpdateEspPlayer()
    if ESPPlayer then
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    if not isnil(v.Character) then
    if not v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
    local BillboardGui = Instance.new("BillboardGui")
    local ESP = Instance.new("TextLabel")
    local HealthESP = Instance.new("TextLabel")
    BillboardGui.Parent = v.Character.Head
    BillboardGui.Name = 'NameEsp'..v.Name
    BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
    BillboardGui.Size = UDim2.new(1,200,1,30)
    BillboardGui.Adornee = v.Character.Head
    BillboardGui.AlwaysOnTop = true
    ESP.Name = "ESP"
    ESP.Parent = BillboardGui
    ESP.TextTransparency = 0
    ESP.BackgroundTransparency = 1
    ESP.Size = UDim2.new(0, 200, 0, 30)
    ESP.Position = UDim2.new(0,25,0,0)
    ESP.Font = Enum.Font.Gotham
    ESP.Text = (v.Name ..' '.."[ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M'.." ]")
    if v.Team == game:GetService("Players").LocalPlayer.Team then
    ESP.TextColor3 = Color3.new(0, 255, 255)
    else
    ESP.TextColor3 = Color3.new(255, 0, 0)
    end
    ESP.TextSize = 14
    ESP.TextStrokeTransparency = 0.500
    ESP.TextWrapped = true
    HealthESP.Name = "HealthESP"
    HealthESP.Parent = ESP
    HealthESP.TextTransparency = 0
    HealthESP.BackgroundTransparency = 1
    HealthESP.Position = ESP.Position + UDim2.new(0, -25, 0, 15)
    HealthESP.Size = UDim2.new(0, 200, 0, 30)
    HealthESP.Font = Enum.Font.Gotham
    HealthESP.TextColor3 = Color3.fromRGB(255, 0, 0)
    HealthESP.TextSize = 14
    HealthESP.TextStrokeTransparency = 0.500
    HealthESP.TextWrapped = true
    HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
    else
    v.Character.Head['NameEsp'..v.Name].ESP.Text = (v.Name ..' '..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
    v.Character.Head['NameEsp'..v.Name].ESP.HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
    v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 0
    v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 0
    end
    end
    end
    else
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    if v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
    v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 1
    v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 1
    end
    end
    end
end
    
function UpdateIslandESP()
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
    pcall(function()
    if IslandESP then
    if v.Name ~= "Sea" then
    if not v:FindFirstChild('NameEsp') then
    local bill = Instance.new('BillboardGui',v)
    bill.Name = 'NameEsp'
    bill.ExtentsOffset = Vector3.new(0, 1, 0)
    bill.Size = UDim2.new(1,200,1,30)
    bill.Adornee = v
    bill.AlwaysOnTop = true
    local name = Instance.new('TextLabel',bill)
    name.Font = "GothamBold"
    name.FontSize = "Size14"
    name.TextWrapped = true
    name.Size = UDim2.new(1,0,1,0)
    name.TextYAlignment = 'Top'
    name.BackgroundTransparency = 1
    name.TextStrokeTransparency = 0.5
    name.TextColor3 = Color3.fromRGB(80, 245, 245)
    else
    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
    end
    end
    else
    if v:FindFirstChild('NameEsp') then
    v:FindFirstChild('NameEsp'):Destroy()
    end
    end
    end)
    end
end
    
function UpdateChestEsp()
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    pcall(function()
    if string.find(v.Name,"Chest") then
    if ChestESP then
    if string.find(v.Name,"Chest") then
    if not v:FindFirstChild('NameEsp'..Number) then
    local bill = Instance.new('BillboardGui',v)
    bill.Name = 'NameEsp'..Number
    bill.ExtentsOffset = Vector3.new(0, 1, 0)
    bill.Size = UDim2.new(1,200,1,30)
    bill.Adornee = v
    bill.AlwaysOnTop = true
    local name = Instance.new('TextLabel',bill)
    name.Font = "GothamBold"
    name.FontSize = "Size14"
    name.TextWrapped = true
    name.Size = UDim2.new(1,0,1,0)
    name.TextYAlignment = 'Top'
    name.BackgroundTransparency = 1
    name.TextStrokeTransparency = 0.5
    name.TextColor3 = Color3.fromRGB(0, 255, 250)
    if v.Name == "Chest1" then
    name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
    end
    if v.Name == "Chest2" then
    name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
    end
    if v.Name == "Chest3" then
    name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
    end
    else
    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
    end
    end
    else
    if v:FindFirstChild('NameEsp'..Number) then
    v:FindFirstChild('NameEsp'..Number):Destroy()
    end
    end
    end
    end)
    end
end

function UpdateBfEsp()
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    pcall(function()
    if DevilFruitESP then
    if string.find(v.Name, "Fruit") then
    if not v.Handle:FindFirstChild('NameEsp'..Number) then
    local bill = Instance.new('BillboardGui',v.Handle)
    bill.Name = 'NameEsp'..Number
    bill.ExtentsOffset = Vector3.new(0, 1, 0)
    bill.Size = UDim2.new(1,200,1,30)
    bill.Adornee = v.Handle
    bill.AlwaysOnTop = true
    local name = Instance.new('TextLabel',bill)
    name.Font = "GothamBold"
    name.FontSize = "Size14"
    name.TextWrapped = true
    name.Size = UDim2.new(1,0,1,0)
    name.TextYAlignment = 'Top'
    name.BackgroundTransparency = 1
    name.TextStrokeTransparency = 0.5
    name.TextColor3 = Color3.fromRGB(255, 0, 0)
    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
    else
    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
    end
    end
    else
    if v.Handle:FindFirstChild('NameEsp'..Number) then
    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
    end
    end
    end)
    end
end
    
-- Update Flower ESP
function UpdateFlowerEsp()
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    pcall(function()
    if v.Name == "Flower2" or v.Name == "Flower1" then
    if FlowerESP then
    if not v:FindFirstChild('NameEsp'..Number) then
    local bill = Instance.new('BillboardGui',v)
    bill.Name = 'NameEsp'..Number
    bill.ExtentsOffset = Vector3.new(0, 1, 0)
    bill.Size = UDim2.new(1,200,1,30)
    bill.Adornee = v
    bill.AlwaysOnTop = true
    local name = Instance.new('TextLabel',bill)
    name.Font = "GothamBold"
    name.FontSize = "Size14"
    name.TextWrapped = true
    name.Size = UDim2.new(1,0,1,0)
    name.TextYAlignment = 'Top'
    name.BackgroundTransparency = 1
    name.TextStrokeTransparency = 0.5
    name.TextColor3 = Color3.fromRGB(255, 0, 0)
    if v.Name == "Flower1" then
    name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
    name.TextColor3 = Color3.fromRGB(0, 0, 255)
    end
    if v.Name == "Flower2" then
    name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
    name.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
    else
    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
    end
    else
    if v:FindFirstChild('NameEsp'..Number) then
    v:FindFirstChild('NameEsp'..Number):Destroy()
    end
    end
    end
    end)
    end
end
    
-- Infinite Abilities
function InfAb()
    if InfAbility then
    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
    local inf = Instance.new("ParticleEmitter")
    inf.Acceleration = Vector3.new(0,0,0)
    inf.Archivable = true
    inf.Drag = 20
    inf.EmissionDirection = Enum.NormalId.Top
    inf.Enabled = true
    inf.Lifetime = NumberRange.new(0.2,0.2)
    inf.LightInfluence = 0
    inf.LockedToPart = true
    inf.Name = "Agility"
    inf.Rate = 500
    local numberKeypoints2 = {
    NumberSequenceKeypoint.new(0, 0);
    NumberSequenceKeypoint.new(1, 4);
    }
    inf.Size = NumberSequence.new(numberKeypoints2)
    inf.RotSpeed = NumberRange.new(999, 9999)
    inf.Rotation = NumberRange.new(0, 0)
    inf.Speed = NumberRange.new(30, 30)
    inf.SpreadAngle = Vector2.new(360,360)
    inf.Texture = "rbxassetid://7157487174"
    inf.VelocityInheritance = 0
    inf.ZOffset = 2
    inf.Transparency = NumberSequence.new(0)
    inf.Color = ColorSequence.new(Color3.fromRGB(80,245,245),Color3.fromRGB(80,245,245))
    inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    end
    else
    if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
    end
    end
end
    
local LocalPlayer = game:GetService'Players'.LocalPlayer
    local originalstam = LocalPlayer.Character.Energy.Value
    function infinitestam()
    LocalPlayer.Character.Energy.Changed:connect(function()
    if InfiniteEnergy then
    LocalPlayer.Character.Energy.Value = originalstam
    end
    end)
end
    
spawn(function()
    pcall(function()
    while wait(.1) do
    if InfiniteEnergy then
    wait(0.3)
    originalstam = LocalPlayer.Character.Energy.Value
    infinitestam()
    end
    end
    end)
end)
    
-- NoDodgeCool
function NoDodgeCool()
    if nododgecool then
    for i,v in next, getgc() do
    if game:GetService("Players").LocalPlayer.Character.Dodge then
    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
    for i2,v2 in next, getupvalues(v) do
    if tostring(v2) == "0.4" then
    repeat wait(.1)
    setupvalue(v,i2,0)
    until not nododgecool
    end
    end
    end
    end
    end
    end
end

-- Fly Script
function fly()
    local mouse=game:GetService("Players").LocalPlayer:GetMouse''
    localplayer=game:GetService("Players").LocalPlayer
    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    local speedSET=50
    local keys={a=false,d=false,w=false,s=false}
    local e1
    local e2
    local function start()
    local pos = Instance.new("BodyPosition",torso)
    local gyro = Instance.new("BodyGyro",torso)
    pos.Name="EPIXPOS"
    pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    pos.position = torso.Position
    gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    gyro.CFrame = torso.CFrame
    repeat
    wait()
    localplayer.Character.Humanoid.PlatformStand=true
    local new=gyro.CFrame - gyro.CFrame.p + pos.position
    if not keys.w and not keys.s and not keys.a and not keys.d then
    speed=1
end

    if keys.w then
    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
    speed=speed+speedSET
end

    if keys.s then
    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
    speed=speed+speedSET
end

    if keys.d then
    new = new * CFrame.new(speed,0,0)
    speed=speed+speedSET
end

    if keys.a then
    new = new * CFrame.new(-speed,0,0)
    speed=speed+speedSET
end

    if speed>speedSET then
    speed=speedSET
end

    pos.position=new.p
    if keys.w then
    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
    elseif keys.s then
    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
    else
    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
end

    until not Fly
    if gyro then
    gyro:Destroy()
end

    if pos then
    pos:Destroy()
end

    flying=false
    localplayer.Character.Humanoid.PlatformStand=false
    speed=0
end

    e1=mouse.KeyDown:connect(function(key)
    if not torso or not torso.Parent then
    flying=false e1:disconnect() e2:disconnect() return
end

    if key=="w" then
    keys.w=true
    elseif key=="s" then
    keys.s=true
    elseif key=="a" then
    keys.a=true
    elseif key=="d" then
    keys.d=true
    end
end)

    e2=mouse.KeyUp:connect(function(key)
    if key=="w" then
    keys.w=false
    elseif key=="s" then
    keys.s=false
    elseif key=="a" then
    keys.a=false
    elseif key=="d" then
    keys.d=false
    end
end)
    start()
end

-- Click
function Click()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
    
-- Auto Haki
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

-- UnEquipWeapon
function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
    _G.NotAutoEquip = true
    wait(.5)
    game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
    wait(.1)
    _G.NotAutoEquip = false
    end
end
    
-- EquipWeapon
function EquipWeapon(ToolSe)
    if not _G.NotAutoEquip then
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
    Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
    wait(.1)
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

Type = 1
spawn(function()
while wait(.1) do
    if Type == 1 then
        Pos = CFrame.new(0,PosY,0)
    elseif Type == 2 then
        Pos = CFrame.new(0,PosY,-30)
    elseif Type == 3 then
        Pos = CFrame.new(30,PosY,0)
    elseif Type == 4 then
        Pos = CFrame.new(0,PosY,30)	
    elseif Type == 5 then
        Pos = CFrame.new(-30,PosY,0)
    elseif Type == 6 then
        Pos = CFrame.new(0,35,0)
    end
    end
end)

spawn(function()
while wait(.1) do
    Type = 1
    wait(0.5)
    Type = 2
    wait(0.5)
    Type = 3
    wait(0.5)
    Type = 4
    wait(0.5)
    Type = 5
    wait(0.5)
    end
end)

Type = 2
spawn(function()
while wait() do
    if Type == 2 then
        PosY = CFrame.new(0,PosY,0)
		wait()
		PosY = CFrame.new(0,PosY,-45)
		wait()
		PosY = CFrame.new(45,PosY,0)
		wait()
		PosY = CFrame.new(0,PosY,45)
		wait()
		PosY = CFrame.new(-45,PosY,0)
    	end
    end
end)

spawn(function()
while wait() do
    Type = 2
	end
end)

function TPBSafe(Pos)
	local tween_s3 = game:service"TweenService"
	local info3 = TweenInfo.new((game:GetService("Workspace").Boats.Guardian.VehicleSeat.CFrame.Position - Pos.Position).Magnitude/170, Enum.EasingStyle.Linear)
	tween3 = tween_s3:Create(game:GetService("Workspace").Boats.Guardian.VehicleSeat, info3, {CFrame = Pos})
tween3:Play()
tween3.Completed:Wait(E)

local tweenfunc = {}
	
function tweenfunc:Stop()
	tween3:Cancel()
end
	return tweenfunc
end

function TPB3(Pos)
	local tween_sBf = game:service"TweenService"
	local infoBf = TweenInfo.new((game:GetService("Workspace").Boats.Guardian.VehicleSeat.CFrame.Position - Pos.Position).Magnitude/600, Enum.EasingStyle.Linear)
	tweenBf = tween_sBf:Create(game:GetService("Workspace").Boats.Guardian.VehicleSeat, infoBf, {CFrame = Pos})
tweenBf:Play()
tweenBf.Completed:Wait(E)

local tweenfunc = {}
	
function tweenfunc:Stop()
	tweenBf:Cancel()
end
	return tweenfunc
end

function TPB(Pos)
	local tween_sB = game:service"TweenService"
	local infoB = TweenInfo.new((game:GetService("Workspace").Boats.Guardian.VehicleSeat.CFrame.Position - Pos.Position).Magnitude/180, Enum.EasingStyle.Linear)
	tweenB = tween_sB:Create(game:GetService("Workspace").Boats.Guardian.VehicleSeat, infoB, {CFrame = Pos})
tweenB:Play()
tweenB.Completed:Wait(E)

local tweenfunc = {}
	
function tweenfunc:Stop()
	tweenB:Cancel()
end
	return tweenfunc
end
	
function TPP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tweenP:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	local tween_sP = game:service"TweenService"
	local infoP = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/150, Enum.EasingStyle.Linear)
	tweenP = tween_sP:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], infoP, {CFrame = CFgo})
tweenP:Play()
tweenP.Completed:Wait(E)

local tweenfunc = {}
	
function tweenfunc:Stop()
	tweenP:Cancel()
end
	return tweenfunc
end

function TPP2(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tweenPs:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	local tween_sPs = game:service"TweenService"
	local infoPs = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/170, Enum.EasingStyle.Linear)
	tweenPs = tween_sPs:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], infoPs, {CFrame = CFgo})
tweenPs:Play()
	
local tweenfunc = {}
	
function tweenfunc:Stop()
	tweenPs:Cancel()
end
	return tweenfunc
end

function topos2(Pos)
	Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	pcall(function() tweenT = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/180, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
	tweenT:Play()
	tweenT.Completed:Wait(E)
end
    
-- Topos Script
function topos(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/140, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 250 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    end
    
function GetDistance(target)
    return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end

function BTP(P)
repeat wait(1)
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500
end

function TP1(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 250
    elseif Distance < 50 then
        Speed = 210
    elseif Distance < 150 then
        Speed = 180
    elseif Distance < 250 then
        Speed = 170
    elseif Distance < 500 then
        Speed = 160
    elseif Distance < 750 then
        Speed = 150
    elseif Distance >= 1000 then
        Speed = 150
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end
    
-- TP Script
function TP(Pos)
    Distance = (Pos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 500 then
    Speed = 700000
    elseif Distance >= 1000 then
    Speed = 500
    end
    game:GetService("TweenService"):Create(
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
    {CFrame = Pos}
    ):Play()
    _G.Clip = true
    wait(Distance/Speed)
    _G.Clip = false
end
    
spawn(function()
    pcall(function()
    while wait() do
    if _G.Auto_StartRaid or _G.Auto_Next_Island or _G.Kill_Aura or _G.Auto_Start_Law_Dungeon or _G.AutoNevaSoulGuitar or _G.CursedChest or _G.Autotushita or Auto_Cursed_Dual_Katana or _G.BoneFarm or _G.FishBoat or _G.AutoAdvanceDungeon or _G.BrigadeShip or _G.AutoRemover or _G.AutoSail or _G.SendShip or _G.SharkPir or _G.TerShark or _G.Beast or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone == true then
    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
    local Noclip = Instance.new("BodyVelocity")
    Noclip.Name = "BodyClip"
    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    Noclip.MaxForce = Vector3.new(100000,100000,100000)
    Noclip.Velocity = Vector3.new(0,0,0)
                end
            end
        end
    end)
end)
    
spawn(function()
    pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
    if _G.Auto_StartRaid or _G.Auto_Next_Island or _G.Kill_Aura or _G.Auto_Start_Law_Dungeon or _G.AutoNevaSoulGuitar or _G.CursedChest or _G.BoneFarm or _G.FishBoat or _G.AutoAdvanceDungeon or _G.TerShark or _G.BrigadeShip or _G.SharkPir or _G.SendShip or _G.AutoSail or _G.AutoRemover or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NoClip or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone == true then
    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
    if v:IsA("BasePart") then
    v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
    
spawn(function()
    while wait() do
    if _G.Auto_StartRaid or _G.Auto_Next_Island or _G.Kill_Aura or _G.Auto_Start_Law_Dungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone == true then
    pcall(function()
    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_StartRaid or _G.Auto_Next_Island or _G.Kill_Aura or _G.Auto_Start_Law_Dungeon or _G.AutoHakiSpam or _G.AutoFarm or _G.AutoFarmFruitMastery or _G.AutoFarmSwanGlasses or _G.AutoFarmBossHallow or _G.AutoRaid or _G.BoneFarm or _G.AutoRemover or _G.AutoSail or _G.TerShark or _G.Sharky or _G.Piranas or _G.FishBoat or _G.BrigadeShip or _G.BrigadeShips or _G.Beast then
        pcall(function()
                AutoHaki()
            end)
        end
    end
end)

spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		if _G.Auto_StartRaid or _G.Auto_Next_Island or _G.Kill_Aura or _G.Auto_Start_Law_Dungeon or _G.BoneFarm or _G.AutoRemover or _G.AutoSail or _G.TerShark or _G.Sharky or _G.Piranas or _G.FishBoat or _G.BrigadeShip or _G.BrigadeShips or _G.Beast then
			if not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
				setfflag("HumanoidParallelRemoveNoPhysics", "False")
				setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
				setfflag("CrashPadUploadToBacktraceToBacktraceBaseUrl", "")
				setfflag("CrashUploadToBacktracePercentage", "0")
				setfflag("CrashUploadToBacktraceBlackholeToken", "")
				setfflag("CrashUploadToBacktraceWindowsPlayerToken", "")
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end
	end)
end)

-- StopTween Script
function StopTween(target)
        if not target then
            _G.StopTween = true
            wait()
            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
            _G.StopTween = false
            _G.Clip = false
        end
    end
    
    spawn(function()
    pcall(function()
    while wait() do
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
    if v:FindFirstChild("RemoteFunctionShoot") then
    SelectWeaponMelee = v.Name
                    end
                end
            end
        end
    end)
end)

spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		if _G.Auto_StartRaid or _G.Auto_Next_Island or _G.Kill_Aura or _G.Auto_Start_Law_Dungeon or _G.AutoFarm or _G.BoneFarm then
			if not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
				setfflag("HumanoidParallelRemoveNoPhysics", "False")
				setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
				setfflag("CrashPadUploadToBacktraceToBacktraceBaseUrl", "")
				setfflag("CrashUploadToBacktracePercentage", "0")
				setfflag("CrashUploadToBacktraceBlackholeToken", "")
				setfflag("CrashUploadToBacktraceWindowsPlayerToken", "")
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			else
				if not game:GetService("Workspace"):FindFirstChild("LOL1") then
					local LOL1 = Instance.new("Part")
					LOL1.Name = "LOL1"
					LOL1.Parent = game.Workspace
					LOL1.Anchored = true
					LOL1.Transparency = 1.000
					LOL1.Size = Vector3.new(50,0.5,50)
				elseif game:GetService("Workspace"):FindFirstChild("LOL1") then
					game.Workspace["LOL1"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.8,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
				end
			end
			for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.CanCollide = false
				end
			end
		end
	end)
end)

spawn(function()
	while task.wait() do
		pcall(function()
			if StatrMagnet then
				if _G.AutoFarm then
					if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == Ms and (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 375 then
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(14)
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.CFrame = PosMon
								sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end
				else
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 350 then
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.Humanoid:ChangeState(14)
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.CFrame = PosMon
							sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
						end
					end
				end
			end
		end)
	end
end)

spawn(function()
    while wait() do
        if TestStartMagnet then
            pcall(function()
                StatrMagnet = true
                print("startmagnet true")
                wait(10)
                StatrMagnet = false
                print("startmagnet false")
                wait(5)
            end)
        end
    end
end)

Skillaimbot = true

spawn(function()
	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if UseSkillMasteryDevilFruit then
						args[2] = PositionSkillMasteryDevilFruit
						return old(unpack(args))
					elseif Skillaimbot then
						args[2] = AimBotSkillPosition
						return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)
end)

spawn(function()
	while wait() do
		if Skillaimbot then
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 125 then
					if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						AimBotSkillPosition = v:FindFirstChild("HumanoidRootPart").Position
                        end
					end
				end 
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if Skillaimbot then
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if (v.Sails.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1250 then
					if v:FindFirstChild("Sails") then
						AimBotSkillPosition = v:FindFirstChild("Sails").Position
                        end
					end
				end 
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if Skillaimbot then
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (v.VehicleSeat.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1250 then
					if v:FindFirstChild("VehicleSeat") then
						AimBotSkillPosition = v:FindFirstChild("VehicleSeat").Position
                        end
					end
				end 
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if Skillaimbot then
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 2500 then
					if v:FindFirstChild("HumanoidRootPart") then
						AimBotSkillPosition = v:FindFirstChild("HumanoidRootPart").Position
                        end
					end
				end 
			end)
		end
	end
end)

Skillz = true
Skillx = true
Skillc = true
Skillv = true
Skillf = true

spawn(function()
    while wait() do
        pcall(function()
            if AutoSkill then
                if Skillz then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                    wait(.1)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                end
                if Skillx then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                    wait(.1)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                end
                if Skillc then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                    wait(.1)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                end
                if Skillv then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                    wait(.1)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                end
                if Skillf then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
                    wait(.1)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
                end
            end
        end)
    end
end)

function CheckAntiCheatBypass()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
            end
        end
     end
     for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
                v:Destroy()
            end
        end
    end
end

local function bypassAntiExploit()
    for _, instance in ipairs(filtergc()) do
        if instance:IsA("AntiExploitSystem") then
            instance:Destroy()
        end
    end
end

_G.AutoSetSpawn = true

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoSetSpawn then
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                end
            end
        end
    end)
end)

local AppleUi = Update:Window("APPLE","",Enum.KeyCode.RightControl);

-- \\ Window Table // --

local Main = AppleUi:Tab("Main","rbxassetid://14764164264")
    local Setting = AppleUi:Tab("Setting","rbxassetid://14782648917")
    local AutoQuest = AppleUi:Tab("Quest & Item","rbxassetid://9606626859")
    local Stats = AppleUi:Tab("Auto Stats","rbxassetid://14764174048")
    local Sea = AppleUi:Tab("Sea Event","rbxassetid://15412636044")
    local Combat = AppleUi:Tab("Combat","rbxassetid://14764193934")
    local Teleport = AppleUi:Tab("Teleport","rbxassetid://14764218351")
    local Dungeon = AppleUi:Tab("Dungeon","rbxassetid://14764250087")
    local Race = AppleUi:Tab("Race V4","rbxassetid://11446900930")
    local DevilFruit = AppleUi:Tab("Devil Fruit","rbxassetid://14764233722")
    local Shop = AppleUi:Tab("Shop","rbxassetid://14764242920")
local Misc = AppleUi:Tab("Misc+Esp","rbxassetid://11447063791")

-- \\ Farm Table // --

do

Main:Seperator("Auto Farm",_G.ColorMain)
    
Main:Dropdown("Select Weapon",_G.ColorMain,{"Melee", "Sword", "Devil Fruit"},function(value)
    _G.SelectWeapon = value
end)

if _G.SelectWeapon == nil then
    _G.SelectWeapon = "Melee"
end

spawn(function()
    while wait() do
        pcall(function()
          if _G.SelectWeapon == "Melee" then
            for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.ToolTip == "Melee" then
                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                _G.SelectWeapon = v.Name
            end
        end
    end
        elseif _G.SelectWeapon == "Sword" then
            for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ToolTip == "Sword" then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
            _G.SelectWeapon = v.Name
        end
    end
        end
            elseif _G.SelectWeapon == "Devil Fruit" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.ToolTip == "Blox Fruit" then
                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                _G.SelectWeapon = v.Name
            end
        end
            end
                else
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == _G.SelectWeapon then
                        _G.SelectWeapon = v.Name
                        end
                    end
                end
            end)
        end
    end)
    
Main:Toggle("Auto Farm",_G.ColorMain,false,function(value)
    _G.AutoFarm = value
    StopTween(_G.AutoFarm)
    if _G.AutoFarm == true then
        _G.BoneFarm = false
        _G.AutoFarmFruitMastery = false
    end
end)

spawn(function()
	while wait(.1) do
		pcall(function()
			if _G.AutoFarm then
				if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					if _G.Farm_Boss then
						_G.SelectBoss = nil
						_G.Farm_Boss = nil
						SelectMonster = nil
						_G.Farm_Mon = nil
						_G.FastAttack = false
						wait(.2)
					end
					if _G.SelectBoss ~= nil and game.Workspace.Enemies:FindFirstChild(_G.SelectBoss) or _G.SelectBoss ~= nil and game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
						CheckQuestBoss()
						repeat wait(.2)
							TelePBoss(CFrameQBoss)
							TP(CFrameQBoss)
						until (CFrameQBoss.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						_G.Farm_Boss = true
						_G.FastAttack = false
					elseif SelectMonster ~= nil then
						CheckLevel2()
						AutoHaki()
						_G.FastAttack = false
						repeat wait(.2)
							TelePBoss(CFrameQ)
							TP(CFrameQ)
							_G.FastAttack = false
						until (CFrameQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						_G.FastAttack = false
						SelectMonster = nil
						_G.Farm_Mon = nil
					else
						TestStartMagnet = nil
						CheckLevel2()
						AutoHaki()
						_G.FastAttack = false
						repeat wait(.2)
							TelePBoss(CFrameQ)
							topos(CFrameQ)
						until (CFrameQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						_G.FastAttack = false
					end
				elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if _G.Farm_Boss then
						if game.Workspace.Enemies:FindFirstChild(_G.SelectBoss) then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == _G.SelectBoss and v.Humanoid.Health > 0 then
									if v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy()
									end
									v.Humanoid:ChangeState(11)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(5,5,5)
									TestStartMagnet = nil
									repeat wait(0.3)
										TelePBoss(CFrameQBoss)
										EquipWeapon(_G.SelectWeapon)
										topos(v.HumanoidRootPart.CFrame*CFrame.new(0,30,50))
                                        game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) or not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm or Mix_Farm
									if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
									end
								end
							end
						else
							topos(CFrameBoss*CFrame.new(0,30,0))
							TelePBoss(CFrameBoss)
						end
					else
						if game.Workspace.Enemies:FindFirstChild(Ms) then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == Ms and v.Humanoid.Health > 0 then
									PosMon = v.HumanoidRootPart.CFrame
									_G.FastAttack = true
									TestStartMagnet = true
									if v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy()
									end
									v.Humanoid:ChangeState(11)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(20,20,20)
									repeat task.wait()
										TelePBoss(CFrameQ)
										EquipWeapon(_G.SelectWeapon)
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or not v.Parent or v.Humanoid.Health <= 0 or not _G.AutoFarm
									if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
									elseif Lv >= 1 and Lv <= 2499 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
									elseif Lv >= 2525 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
									end
									Attack = nil
								end
							end
							else
							_G.FastAttack = false
							TestStartMagnet = false
							if game.ReplicatedStorage:FindFirstChild(Ms) then
								topos(game.ReplicatedStorage:FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,10,0))
							else
							topos(CFrameMon)
							_G.FastAttack = false
							end
						end
					end
				end
			end
		end)
	end
end)

Main:Seperator("Bone",_G.ColorMain)

Main:Toggle("Farm Bone",_G.ColorMain,_G.BoneFarm,function(vu)
    _G.BoneFarm = vu
    StopTween(_G.BoneFarm)
    if _G.BoneFarm == true then
    _G.AutoFarm = false
    _G.AutoFarmFruitMastery = false
    end
end)

spawn(function()
	while wait(.1) do
		pcall(function()
			if _G.BoneFarm then
				if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					if _G.Farm_Boss then
						_G.SelectBoss = nil
						_G.Farm_Boss = nil
						SelectMonster = nil
						_G.Farm_Mon = nil
						_G.FastAttack = false
						wait(.2)
					end
					if _G.SelectBoss ~= nil and game.Workspace.Enemies:FindFirstChild(_G.SelectBoss) or _G.SelectBoss ~= nil and game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
						CheckQuestBoss()
						repeat wait(.2)
							TelePBoss(CFrameQBoss)
							TP(CFrameQBoss)
						until (CFrameQBoss.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						_G.Farm_Boss = true
						_G.FastAttack = false
					elseif SelectMonster ~= nil then
						QuestBone()
						AutoHaki()
						_G.FastAttack = false
						repeat wait(.2)
							TelePBoss(CFrameQ)
							TP(CFrameQ)
							_G.FastAttack = false
						until (CFrameQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						_G.FastAttack = false
						SelectMonster = nil
						_G.Farm_Mon = nil
					else
						TestStartMagnet = nil
						QuestBone()
						AutoHaki()
						_G.FastAttack = false
						repeat wait(.2)
							TelePBoss(CFrameQ)
							topos(CFrameQ)
						until (CFrameQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						_G.FastAttack = false
					end
				elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if _G.Farm_Boss then
						if game.Workspace.Enemies:FindFirstChild(_G.SelectBoss) then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == _G.SelectBoss and v.Humanoid.Health > 0 then
									if v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy()
									end
									v.Humanoid:ChangeState(11)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(5,5,5)
									TestStartMagnet = nil
									repeat wait(0.3)
										TelePBoss(CFrameQBoss)
										EquipWeapon(_G.SelectWeapon)
										topos(v.HumanoidRootPart.CFrame*CFrame.new(0,30,50))
                                        game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) or not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm or Mix_Farm
									if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
									end
								end
							end
						else
							topos(CFrameBoss*CFrame.new(0,30,0))
							TelePBoss(CFrameBoss)
						end
					else
						if game.Workspace.Enemies:FindFirstChild(Ms) then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == Ms and v.Humanoid.Health > 0 then
									PosMon = v.HumanoidRootPart.CFrame
									_G.FastAttack = true
									TestStartMagnet = true
									if v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy()
									end
									v.Humanoid:ChangeState(11)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(20,20,20)
									repeat task.wait()
										TelePBoss(CFrameQ)
										EquipWeapon(_G.SelectWeapon)
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or not v.Parent or v.Humanoid.Health <= 0 or not _G.BoneFarm
									if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
									elseif Lv >= 1 and Lv <= 2499 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
									elseif Lv >= 2525 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
									end
									Attack = nil
								end
							end
							else
							_G.FastAttack = false
							TestStartMagnet = false
							if game.ReplicatedStorage:FindFirstChild(Ms) then
								topos(game.ReplicatedStorage:FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,10,0))
							else
							topos(CFrameMon)
							_G.FastAttack = false
							end
						end
					end
				end
			end
		end)
	end
end)

Main:Button("Buy Surprise",_G.ColorMain,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
end)
    
Main:Button("Stat Refund",_G.ColorMain,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,2)
end)
    
Main:Button("Race Reroll",_G.ColorMain,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,3)
end)

Main:Seperator("Mastery",_G.ColorMain)

Main:Slider("Health",_G.ColorMain,1,100,65,function(vu)
    HealthMs = vu
    _G.Kill_At = vu
end)

Main:Toggle("Auto Mastery",_G.ColorMain,false,function(vu)
    _G.AutoFarmFruitMastery = vu
    StopTween(_G.AutoFarmFruitMastery)
    if _G.AutoFarmFruitMastery == true then
        _G.AutoFarm = true
        _G.BoneFarm = false
    elseif _G.AutoFarmFruitMastery == false then
        _G.AutoFarm = false
        StopTween(_G.AutoFarm)
    end
end)

spawn(function()
    while wait() do
        if _G.AutoFarmFruitMastery then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    TestStartMagnet = false
                    AutoSkill = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    TestStartMagnet = false
                    AutoSkill = false
                    CheckLevel2()
                    repeat wait()
                        TP1(CFrameQ)
                    until (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 or not _G.AutoFarmFruitMastery
                    if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        wait(0.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
                        wait(0.1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckLevel2()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Ms then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                        repeat task.wait()
                                            if v.Humanoid.Health <= HealthMs then
                                                _G.AutoFarm = false
                                                _G.FastAttack = false
                                                AutoHaki()
                                                EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,15,5))
                                                v.HumanoidRootPart.CanCollide = false
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                Skillaimbot = true
                                                
                                                AutoSkill = true
                                            else
                                                _G.AutoFarm = true
                                                _G.FastAttack = true
                                                AutoSkill = false 
                                                Skillaimbot = false
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,15,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                TestStartMagnet = true
                                            end
                                            TestStartMagnet = true
                                        until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        AutoSkill = false
                                        TestStartMagnet = false
                                        StatrMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        TP1(CFrameMon)
                        TestStartMagnet = false   
                        AutoSkill = false 
                        local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Ms) 
                        if Mob then
                            TP1(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                        else
                            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                task.wait()
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                            end
                        end
                    end
                end
            end)
        end
    end
end)

end

-- \\ Setting Table // --

do

Setting:Seperator("Farm Setting",_G.ColorSetting)

Setting:Toggle("Fast Attack",_G.ColorSetting,true,function(vu)
	_G.FastAttack = vu
end)

require(game.ReplicatedStorage.Util.CameraShaker):Stop()

xShadowFastAttackx = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)

xShadowx = debug.getupvalues(xShadowFastAttackx)[2]

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttack then
            if typeof(xShadowx) == "table" then
                pcall(function()
                    xShadowx.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                    xShadowx.activeController.timeToNextAttack = 0
                    xShadowx.activeController.hitboxMagnitude = 60
                    xShadowx.activeController.active = false
                    xShadowx.activeController.timeToNextBlock = 0
                    xShadowx.activeController.focusStart = 1655503339.0980349
                    xShadowx.activeController.increment = 1
                    xShadowx.activeController.blocking = false
                    xShadowx.activeController.attacking = false
                    xShadowx.activeController.humanoid.AutoRotate = 50
                end)
            end
        end
    end)
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttack == true then
            game.Players.LocalPlayer.Character.Stun.Value = 0
            game.Players.LocalPlayer.Character.Busy.Value = false        
        end
    end)
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttack then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
            end)
        end
    end)
end)

Setting:Dropdown("Fast Attack Delay ",_G.ColorSetting,{"0", "0.2", "0.15", "0.155", "0.16", "0.165", "0.17", "0.175", "0.18", "0.185", "0.190", "0.195", "1", "1.5", "2"},function(vu)
	_G.FastMode = vu
end)

if _G.FastMode == nil then
	_G.FastMode = "0"
end

spawn(function()
	while wait(.1) do
		if _G.FastMode then
			pcall(function()
				if _G.FastMode == "0" then
					_G.Fast_Delay = 0
				elseif _G.FastMode == "0.2" then
					_G.Fast_Delay = 0.2
				elseif _G.FastMode == "0.5" then
					_G.Fast_Delay = 0.5
				elseif _G.FastMode == "0.15" then
					_G.Fast_Delay = 0.15
				elseif _G.FastMode == "0.155" then
					_G.Fast_Delay = 0.155
				elseif _G.FastMode == "0.16" then
					_G.Fast_Delay = 0.16
				elseif _G.FastMode == "0.165" then
					_G.Fast_Delay = 0.165
				elseif _G.FastMode == "0.17" then
					_G.Fast_Delay = 0.17
				elseif _G.FastMode == "0.175" then
					_G.Fast_Delay = 0.175
				elseif _G.FastMode == "0.18" then
					_G.Fast_Delay = 0.18
				elseif _G.FastMode == "0.185" then
					_G.Fast_Delay = 0.185
				elseif _G.FastMode == "0.190" then
					_G.Fast_Delay = 0.190
				elseif _G.FastMode == "0.195" then
					_G.Fast_Delay = 0.195
				elseif _G.FastMode == "1" then
					_G.Fast_Delay = 0.1
				elseif _G.FastMode == "1.5" then
					_G.Fast_Delay = 1.5
				elseif _G.FastMode == "2" then
					_G.Fast_Delay = 2
				end
			end)
		end
	end
end)

local Client = game.Players.LocalPlayer
    local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
    local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
    spawn(function()
        while task.wait() do
            pcall(function()
                if not shared.orl then shared.orl = STOPRL.wrapAttackAnimationAsync end
                if not shared.cpc then shared.cpc = STOP.play end
                    STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                    local Hits = STOPRL.getBladeHits(b,c,d)
                    if Hits then
                        if _G.FastAttack then
                            STOP.play = function() end
                            a:Play(0.01,0.01,0.01)
                            func(Hits)
                            STOP.play = shared.cpc
                            wait(a.length * 0.5)
                            a:Stop()
                        else
                        a:Play()
                    end
                end
            end
        end)
    end
end)

function GetBladeHit()
		local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
		local CmrFwLib = CombatFrameworkLib[2]
		local p13 = CmrFwLib.activeController
		local weapon = p13.blades[1]
		if not weapon then 
			return weapon
		end
		while weapon.Parent ~= game.Players.LocalPlayer.Character do
			weapon = weapon.Parent 
		end
		return weapon
	end
	function AttackHit()
		local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
		local CmrFwLib = CombatFrameworkLib[2]
		local plr = game.Players.LocalPlayer
		for i = 1, 1 do
			local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,{plr.Character.HumanoidRootPart},60)
			local cac = {}
			local hash = {}
			for k, v in pairs(bladehit) do
				if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
					table.insert(cac, v.Parent.HumanoidRootPart)
					hash[v.Parent] = true
				end
			end
			bladehit = cac
			if #bladehit > 0 then
				pcall(function()
					CmrFwLib.activeController.timeToNextAttack = 0
					CmrFwLib.activeController.attacking = false
					CmrFwLib.activeController.blocking = false
					CmrFwLib.activeController.timeToNextBlock = 0
					CmrFwLib.activeController.increment = 3
					CmrFwLib.activeController.hitboxMagnitude = 120
					CmrFwLib.activeController.focusStart = 0
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetBladeHit()))
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
				end)
			end
		end
	end
	spawn(function()
		while wait(.1) do
			if _G.FastAttack then
				pcall(function()
				repeat task.wait(_G.Fast_Delay)
					AttackHit()
				until not _G.FastAttack
			end)
		end
	end
end)

Setting:Toggle("Auto Haki",_G.ColorSetting,true,function(vu)
    _G.AutoHakiSpam = vu
end)

Setting:Seperator("Other Setting",_G.ColorSetting)

Setting:Toggle("Do Not Turn This Off",_G.ColorSetting,true,function(value)
  _G.SafeFarm = value
end)

spawn(function()
    while wait() do
        if _G.SafeFarm then
            pcall(function()
                CheckAntiCheatBypass()
                bypassAntiExploit()
            end)
        end
    end
end)

Setting:Toggle("Remove Effect",_G.ColorSetting,true,function(value)
    _G.WhiteScreen = value
end)
    
spawn(function()
    while wait() do
       if _G.WhiteScreen then
            for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "DamageCounter" or v.Name == "SwordSlash" or v.Name == "SlashTail" or v.Name == "Sounds" then
                    v:Destroy()
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if _G.WhiteScreen then
            pcall(function()
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
            end)
        end
    end
end)

if World1 or World2 then

Setting:Toggle("[ FPS ] Management",_G.ColorSetting,false,function(value)
        _G.FpsBoost1 = value
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.FpsBoost1 then
                    game:GetService("Lighting").FantasySky:Destroy()
                    local g = game
                    local w = g.Workspace
                    local l = g.Lighting
                    local t = w.Terrain
                    t.WaterWaveSize = 0
                    t.WaterWaveSpeed = 0
                    t.WaterReflectance = 0
                    t.WaterTransparency = 0
                    l.GlobalShadows = false
                    l.FogEnd = 9e9
                    l.Brightness = 0
                    settings().Rendering.QualityLevel = "Level01"
                    for i, v in pairs(g:GetDescendants()) do
                    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    elseif v:IsA("Decal") or v:IsA("Texture") then
                    v.Transparency = 1
                    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                    elseif v:IsA("Explosion") then
                    v.Transparency = 1
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false
                    elseif v:IsA("MeshPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957
                    end
                    end
                    for i, e in pairs(l:GetChildren()) do
                    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                    e.Enabled = false
                    end
                    end
                    for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
                    if v.Name == ("Water;") then
                    v.Transparency = 1
                    v.Material = "Plastic"
                        end
                    end
                end
            end
        end)
    end)
end

if World3 then
Setting:Toggle("[ FPS ] Management",_G.ColorSetting,true,function(value)
        _G.FpsBoost1 = value
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.FpsBoost1 then
                    game:GetService("Lighting").Sky:Destroy()
                    game:GetService("Lighting").BaseAtmosphere:Destroy()
                    game:GetService("Lighting").Bloom:Destroy()
                    game:GetService("Lighting").Blur:Destroy()
                    game:GetService("Lighting").ColorCorrection:Destroy()
                    game:GetService("Lighting").GlobalColorCorrection:Destroy()
                    game:GetService("Lighting").TrialDeath:Destroy()
                    local g = game
                    local w = g.Workspace
                    local l = g.Lighting
                    local t = w.Terrain
                    t.WaterWaveSize = 0
                    t.WaterWaveSpeed = 0
                    t.WaterReflectance = 0
                    t.WaterTransparency = 0
                    l.GlobalShadows = false
                    l.FogEnd = 9e9
                    l.Brightness = 0
                    settings().Rendering.QualityLevel = "Level01"
                    for i, v in pairs(g:GetDescendants()) do
                    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    elseif v:IsA("Decal") or v:IsA("Texture") then
                    v.Transparency = 1
                    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                    elseif v:IsA("Explosion") then
                    v.Transparency = 1
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false
                    elseif v:IsA("MeshPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957
                    end
                    end
                    for i, e in pairs(l:GetChildren()) do
                    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                    e.Enabled = false
                    end
                    end
                    for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
                    if v.Name == ("Water;") then
                    v.Transparency = 1
                    v.Material = "Plastic"
                        end
                    end
                end
            end
        end)
    end)
end

end

-- \\ Quest Table // --

do

AutoQuest:Seperator("First Sea",_G.ColorQuest)

AutoQuest:Toggle("Auto Saber",_G.ColorQuest,_G.AutoSaber,function(value)
    _G.AutoSaber = value
    StopTween(_G.AutoSaber)
end)
    
spawn(function()
    while wait(.2) do
        local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
        local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
        local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
        if World1 and _G.AutoSaber then
            if _G.AutoFarm then
                _G.AutoFarm = false
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                _G.AutoFarm = false
                repeat wait()
                    TP(CFrame.new(-1609.29956, 40.0520697, 162.820404))
                until (Vector3.new(-1609.29956, 40.0520697, 162.820404)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                wait(3)
                for i,v in pairs(game:GetService("Workspace").Map.Jungle.QuestPlates:GetChildren()) do
                    if v.Name == "Plate1" then
                        repeat wait()
                        TP2(v.Button.CFrame)
                        until (v.Button.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1
                        wait(1)
                    end
                    if v.Name == "Plate2" then
                        repeat wait()
                        TP2(v.Button.CFrame)
                        until (v.Button.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1
                        wait(1)
                    end
                    if v.Name == "Plate3" then
                        repeat wait()
                        TP2(v.Button.CFrame)
                        until (v.Button.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1
                        wait(1)
                    end
                    if v.Name == "Plate4" then
                        repeat wait()
                        TP2(v.Button.CFrame)
                        until (v.Button.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1
                        wait(1)
                    end
                    if v.Name == "Plate5" then
                        repeat wait()
                        TP2(v.Button.CFrame)
                        until (v.Button.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1
                        wait(1)
                    end
                end
                wait(2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1609.29956, 12.0520697, 162.820404, -0.993804812, 2.60902091e-08, 0.11113929, 3.47902116e-08, 1, 7.63408607e-08, -0.11113929, 7.97344768e-08, -0.993804812)
                wait(2)
                repeat wait()
                    EquipWeapon("Torch")
                    TP(CFrame.new(1113.9502, 4.92147732, 4350.91992, -0.60768199, 3.86533046e-08, 0.794180453, 6.00742425e-08, 1, -2.70375722e-09, -0.794180453, 4.60667628e-08, -0.60768199))
                until (Vector3.new(1113.9502, 4.92147732, 4350.91992)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1
                wait(1)
                --fireclickdetector(game:GetService("Workspace").Map.Desert.Burn.Fire.ClickDetector)
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1113.9502, 4.92147732, 4350.91992, -0.60768199, 3.86533046e-08, 0.794180453, 6.00742425e-08, 1, -2.70375722e-09, -0.794180453, 4.60667628e-08, -0.60768199)
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1113.9502, 4.92147732, 4350.91992, -0.60768199, 3.86533046e-08, 0.794180453, 6.00742425e-08, 1, -2.70375722e-09, -0.794180453, 4.60667628e-08, -0.60768199)
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.87708, 4.9214654, 4349.8501, -0.612586915, -9.68697833e-08, 0.790403247, -1.2634203e-07, 1, 2.4638446e-08, -0.790403247, -8.47679615e-08, -0.612586915)
                wait(10)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1113.33618, 7.5484705, 4365.56396, -0.618000686, 2.54492516e-08, -0.786177576, -8.16741874e-09, 1, 3.87911392e-08, 0.786177576, 3.03939913e-08, -0.618000686)
                wait(2)
                repeat wait()
                    EquipWeapon("Cup")
                    TP(CFrame.new(1397.73975, 37.3480263, -1321.54456, -0.170597032, -4.99889588e-08, 0.985340893, 2.99880867e-08, 1, 5.59246409e-08, -0.985340893, 3.90890662e-08, -0.170597032))
                until (Vector3.new(1397.73975, 37.3480263, -1321.54456)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1397.73975, 37.3480263, -1321.54456, -0.170597032, -4.99889588e-08, 0.985340893, 2.99880867e-08, 1, 5.59246409e-08, -0.985340893, 3.90890662e-08, -0.170597032)
                wait(3)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                wait(1)
                Mob_Boss = true
                _G.AutoSaber = false
                
            else
                Auto_Farm = false
                Mob_Boss = true
                _G.AutoSaber = false
            end
        elseif not World1 and _G.AutoSaber then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        end
    end
end)

spawn(function()
    while wait(.2) do
        if Mob_Boss then
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") then
                    EquipWeapon("Relic")
                    repeat wait()
                        EquipWeapon("Relic")
                        TP2(CFrame.new(-1406.60925, 29.8520069, 4.5805192, 0.882920146, 3.62382622e-08, 0.469523162, -3.61928865e-09, 1, -7.03750587e-08, -0.469523162, 6.04362143e-08, 0.882920146))
                    until (Vector3.new(-1406.60925, 29.8520069, 4.5805192)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2
                    wait(1)
                    Saber_Kill = true
                    Mob_Boss = false
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                end
            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                if game.Workspace.Enemies:FindFirstChild("Mob Leader") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Mob Leader" then
                            
                            repeat wait()
                                EquipWeapon(_G.SelectWeapon)
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                TP(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,900))
                            until not v.Parent or v.Humanoid.Health <= 0 or Mob_Boss == false
                        end
                    end
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                    TP2(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame)
                end
            else
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
            end
        end
    end
end)

spawn(function()
    while wait(.2) do
        pcall(function()
            if Saber_Kill then
                if game.Workspace.Enemies:FindFirstChild("Saber Expert") then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Saber Expert" then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                             
                            repeat wait()
                                EquipWeapon(_G.SelectWeapon)
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                TP(v.HumanoidRootPart.CFrame*CFrame.new(0,25,15))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,900))
                            until not v.Parent or v.Humanoid.Health <= 0 or Saber_Kill == false
                        end
                    end
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") or game.Workspace.Enemies:FindFirstChild("Saber Expert") then
                    TP(game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert").HumanoidRootPart.CFrame)
                elseif _G.Hop_Saber then
                    wait(5)
                    if not game.Workspace.Enemies:FindFirstChild("Saber Expert") and not game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                        _G.Hop_Saber_Ex = true
                    end
                else
                    TP2(CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094))
                end
            end
        end)
    end
end)

AutoQuest:Seperator("Second Sea",_G.ColorQuest)

if World2 then
AutoQuest:Toggle("Auto Bartlio Quest",_G.ColorQuest,_G.AutoBartilo,function(value)
    _G.AutoBartilo = value
end)
        
spawn(function()
    pcall(function()
        while wait(.1) do
        if _G.AutoBartilo then
        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
        Mon = "Swan Pirate [Lv. 775]"
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == Ms then
        pcall(function()
        repeat task.wait()
        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
        EquipWeapon(_G.SelectWeapon)
        AutoHaki()
        v.HumanoidRootPart.Transparency = 1
        v.HumanoidRootPart.CanCollide = false
        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
        PosMonBarto =  v.HumanoidRootPart.CFrame
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
        AutoBartiloBring = true
        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
        AutoBartiloBring = false
        end)
        end
        end
        else
        repeat topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
        end
        else
        repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
        wait(1.1)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
        end
        elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
        if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
        Mon = "Jeremy [Lv. 850] [Boss]"
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == Ms then
        OldCFrameBartlio = v.HumanoidRootPart.CFrame
        repeat task.wait()
        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
        EquipWeapon(_G.SelectWeapon)
        AutoHaki()
        v.HumanoidRootPart.Transparency = 1
        v.HumanoidRootPart.CanCollide = false
        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
        v.HumanoidRootPart.CFrame = OldCFrameBartlio
        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
        end
        end
        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
        repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
        wait(1.1)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
        wait(1)
        repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
        wait(2)
        else
        repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
        end
        elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
        repeat topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
        wait(1)
        repeat topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
        wait(1)
        repeat topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
        wait(1)
        repeat topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
        wait(1)
        repeat topos(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
        wait(1)
        repeat topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
        wait(1)
        repeat topos(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
        wait(1)
        repeat topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                    end
                end
            end
        end)
    end)
end

AutoQuest:Toggle("Auto Rengoku",_G.ColorQuest,_G.AutoRengoku,function(value)
    _G.AutoRengoku = value
    StopTween(_G.AutoRengoku)
    end)
    
    spawn(function()
    pcall(function()
    while wait() do
    if _G.AutoRengoku then
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
    EquipWeapon("Hidden Key")
    topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
    elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
    repeat task.wait()
    EquipWeapon(_G.SelectWeapon)
    AutoHaki()
    v.HumanoidRootPart.CanCollide = false
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    RengokuMon = v.HumanoidRootPart.CFrame
    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    StartRengokuMagnet = true
    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
    StartRengokuMagnet = false
    end
end
    else
    StartRengokuMagnet = false
    topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                end
            end
        end
    end)
end)

AutoQuest:Toggle("Auto Swan Glasses",_G.ColorQuest,_G.AutoFarmSwanGlasses,function(value)
    _G.AutoFarmSwanGlasses = value
    StopTween(_G.AutoFarmSwanGlasses)
end)
    
    spawn(function()
    pcall(function()
    while wait() do
    if _G.AutoFarmSwanGlasses then
    if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Don Swan" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
    repeat task.wait()
    pcall(function()
    AutoHaki()
    EquipWeapon(_G.SelectWeapon)
    v.HumanoidRootPart.CanCollide = false
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
    end)
    until _G.AutoFarmSwanGlasses == false or v.Humanoid.Health <= 0
    end
    end
    else
    repeat task.wait()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
    until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.AutoFarmSwanGlasses == false
    end
    end
    end
    end)
    end)

AutoQuest:Seperator("Third Sea",_G.ColorQuest)

local EliteProgress = AutoQuest:Label1("")
    
spawn(function()
    pcall(function()
    while wait() do
    EliteProgress:Refresh("Elite Progress : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
    end
    end)
end)

AutoQuest:Toggle("Auto Elite Hunter",_G.ColorQuest,_G.AutoElitehunter,function(value)
    _G.AutoElitehunter = value
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
    StopTween(_G.AutoElitehunter)
end)
    
spawn(function()
    while wait() do
    if _G.AutoElitehunter and World3 then
    pcall(function()
    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
    repeat  wait()
    topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188))
    until not _G.AutoElitehunter or (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
    if (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
    wait(1.1)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
    wait(0.5)
    end
    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
    if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    repeat task.wait()
    AutoHaki()
    EquipWeapon(_G.SelectWeapon)
    v.HumanoidRootPart.CanCollide = false
    v.Humanoid.WalkSpeed = 0
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
    until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
    end
    end
    end
    else
    if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    else
    if _G.AutoEliteHunterHop then
    Hop()
    else
    topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188))
    end
    end
    end
    end
    end
    end)
    end
    end
end)

AutoQuest:Toggle("Auto Musketeer Hat",_G.ColorQuest,_G.AutoMusketeerHat,function(value)
    _G.AutoMusketeerHat = value
    StopTween(_G.AutoMusketeerHat)
    end)
    
    spawn(function()
    pcall(function()
    while wait(.1) do
    if _G.AutoMusketeerHat then
    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Forest Pirate" then
    repeat task.wait()
    pcall(function()
    EquipWeapon(_G.SelectWeapon)
    AutoHaki()
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    v.HumanoidRootPart.CanCollide = false
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    MusketeerHatMon = v.HumanoidRootPart.CFrame
    StartMagnetMusketeerhat = true
    end)
    until _G.AutoMusketeerHat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
    StartMagnetMusketeerhat = false
    end
    end
    else
    StartMagnetMusketeerhat = false
    topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
    end
    else
    topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
    if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
    wait(1.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
    end
    end
    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Captain Elephant" then
    OldCFrameElephant = v.HumanoidRootPart.CFrame
    repeat task.wait()
    pcall(function()
    EquipWeapon(_G.SelectWeapon)
    AutoHaki()
    v.HumanoidRootPart.CanCollide = false
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    v.HumanoidRootPart.CanCollide = false
    v.HumanoidRootPart.CFrame = OldCFrameElephant
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
    end)
    until _G.AutoMusketeerHat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
    end
    end
    else
    topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
    end
    else
    topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
    if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
    wait(1.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
    end
    end
    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
    topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
    end
    end
    end
    end)
end)

AutoQuest:Toggle("Auto Dark Dagger",_G.ColorQuest,_G.AutoDarkDagger,function(value)
    _G.AutoDarkDagger = value
    StopTween(_G.AutoDarkDagger)
end)
    
spawn(function()
    pcall(function()
    while wait() do
    if _G.AutoDarkDagger then
    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
    repeat task.wait()
    pcall(function()
    AutoHaki()
    EquipWeapon(_G.SelectWeapon)
    v.HumanoidRootPart.CanCollide = false
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
    end)
    until _G.AutoDarkDagger == false or v.Humanoid.Health <= 0
    end
    end
    else
    topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
    end
    end
    end
    end)
end)
    
spawn(function()
    pcall(function()
    while wait() do
    if (_G.AutoDarkDagger_Hop and _G.AutoDarkDagger) and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") and not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") then
    Hop()
    end
    end
    end)
end)

AutoQuest:Toggle("Auto Hallow Scythe",_G.ColorQuest,_G.AutoFarmBossHallow,function(value)
    _G.AutoFarmBossHallow = value
    StopTween(_G.AutoFarmBossHallow)
end)

spawn(function()
    while wait() do
    if _G.AutoFarmBossHallow then
    pcall(function()
    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if string.find(v.Name , "Soul Reaper") then
    repeat task.wait()
    EquipWeapon(_G.SelectWeapon)
    AutoHaki()
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    topos(v.HumanoidRootPart.CFrame*CFrame.new(5,10,7))
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
    v.HumanoidRootPart.Transparency = 1
    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
    until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
    end
    end
    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
    repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
    EquipWeapon("Hallow Essence")
    else
    if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    else
    if _G.AutoFarmBossHallowHop then
    Hop()
    end
    end
    end
    end)
    end
    end
end)

AutoQuest:Toggle("Soul Guitar",_G.ColorQuest,false,function(vu)
    _G.AutoNevaSoulGuitar = vu
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoNevaSoulGuitar then
                if GetWeaponInventory("Soul Guitar") == false then
                    if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 9999999 then
                        if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
                        else
                            if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
                                if game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
                                    Quest2 = true
                                    repeat wait() topos(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875)) until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoNevaSoulGuitar
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
                                    wait(1)
                                elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
                                    if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
                                        Quest4 = true
                                        repeat wait() topos(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625)) until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoNevaSoulGuitar
                                        wait(1)
                                        topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
                                        wait(1)
                                        topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                        wait(1)
                                        topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
                                        wait(1)
                                        topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                    else
                                        Quest3 = true
                                        --Not Work Yet
                                    end
                                else
                                    if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
                                        local args = {
                                            [1] = "GuitarPuzzleProgress",
                                            [2] = "Ghost"
                                        }

                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                    if game.Workspace.Enemies:FindFirstChild("Living Zombie") then
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                if v.Name == "Living Zombie" then
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
                                                    topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                            end
                                        end
                                    else
                                        topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                    end
                                end
                            else    
                                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
                                    print("Go to Grave")
                                    topos(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
                                    print("Wait Next Night")
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
                                end
                            end
                        end
                    else
                        topos(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                    end
                else
            end
        end
    end)
end
end)
    
AutoQuest:Seperator("Dough King",_G.ColorQuest)
    
local MobKilled = AutoQuest:Label("Killed")

spawn(function()
    while wait() do
    pcall(function()
    if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
    MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
    elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
    MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
    elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
    MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
    else
    MobKilled:Set("Boss Is Spawning")
    end
    end)
    end
end)
    
AutoQuest:Toggle("Auto Prince Cake",_G.ColorQuest,_G.AutoDoughtBoss,function(value)
    _G.AutoDoughtBoss = value
    StopTween(_G.AutoDoughtBoss)
end)
    
spawn(function()
    while wait() do
    pcall(function()
    if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
    KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41)) - 500)
    elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
    KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),40,41)) - 500)
    elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
    KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),41,41)) - 500)
    end
    end)
    end
end)
    
spawn(function()
    while wait() do
    if _G.AutoDoughtBoss then
    pcall(function()
    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Cake Prince" then
    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    repeat task.wait()
    AutoHaki()
    EquipWeapon(_G.SelectWeapon)
    v.HumanoidRootPart.CanCollide = false
    v.Humanoid.WalkSpeed = 0
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
    until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
    end
    end
    end
    else
    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    else
    if KillMob == 0 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
    end
    if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
    if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    repeat task.wait()
    AutoHaki()
    EquipWeapon(_G.SelectWeapon)
    v.HumanoidRootPart.CanCollide = false
    v.Humanoid.WalkSpeed = 0
    v.Head.CanCollide = false
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    TestStartMagnet = true
    MagnetDought = true
    PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
    until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or KillMob == 0
    end
    end
    end
    else
    MagnetDought = false
    TestStartMagnet = false
    if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    else
    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    else
    if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    else
    if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    end
    end
    end
    end
    end
    else
    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
    topos(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    else
    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    end
    end
    end
    end
    end
    end)
    end
    end
end)

AutoQuest:Seperator("Advance Dungeon",_G.ColorQuest)
    
AutoQuest:Toggle("Auto Advance Dungeon",_G.ColorQuest,_G.AutoAdvanceDungeon,function(value)
    _G.AutoAdvanceDungeon = value
    StopTween(_G.AutoAdvanceDungeon)
end)
    
spawn(function()
    while wait() do
    if _G.AutoAdvanceDungeon then
    pcall(function()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
    if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
    if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
    topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
    if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
    wait(1.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal")
    end
    end
    elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
    if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
    topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
    if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
    wait(1.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal")
    end
    end
    end
    end
    end)
    end
    end
end)

AutoQuest:Seperator("Other",_G.ColorQuest)
    
local ObservationRange = AutoQuest:Label("")
    
spawn(function()
    while wait() do
    pcall(function()
    ObservationRange:Set("Observation Range Level : "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value))
    end)
    end
end)
    
AutoQuest:Toggle("Auto Farm Observation",_G.ColorQuest,_G.AutoObservation,function(value)
    _G.AutoObservation = value
    StopTween(_G.AutoObservation)
end)
    
    spawn(function()
    while wait() do
    pcall(function()
    if _G.AutoObservation then
    repeat task.wait()
    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
    game:GetService('VirtualUser'):CaptureController()
    game:GetService('VirtualUser'):SetKeyDown('0x65')
    wait(2)
    game:GetService('VirtualUser'):SetKeyUp('0x65')
    end
    until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation
    end
    end)
    end
    end)
    
    spawn(function()
    pcall(function()
    while wait() do
    if _G.AutoObservation then
    if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
    game:GetService("StarterGui"):SetCore("SendNotification", {
    Icon = "rbxassetid://0";
    Title = "Observation",
    Text = "You Have Max Points"
    })
    wait(2)
    else
    if World2 then
    if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
    if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
    repeat task.wait()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
    else
    repeat task.wait()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
    wait(1)
    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
    end
    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
    end
    else
    topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
    end
    elseif World1 then
    if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
    if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
    repeat task.wait()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
    else
    repeat task.wait()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
    wait(1)
    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
    end
    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
    end
    else
    topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
    end
    elseif World3 then
    if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
    if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
    repeat task.wait()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
    else
    repeat task.wait()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
    wait(1)
    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
    end
    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
    end
    else
    topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
    end
    end
    end
    end
    end
    end)
    end)

    AutoQuest:Seperator("Legendary Sword",_G.ColorQuest)
    
    AutoQuest:Toggle("Auto Legendary Sword",_G.ColorQuest,_G.AutoBuyLegendarySword,function(value)
    _G.AutoBuyLegendarySword = value
    end)
    
    spawn(function()
    while wait() do
    if _G.AutoBuyLegendarySword then
    pcall(function()
    local args = {
    [1] = "LegendarySwordDealer",
    [2] = "1"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
    [1] = "LegendarySwordDealer",
    [2] = "2"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
    [1] = "LegendarySwordDealer",
    [2] = "3"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    if _G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2 then
    wait(10)
    Hop()
    end
    end)
    end
    end
    end)
    
    AutoQuest:Toggle("Auto Legendary Sword Hop",_G.ColorQuest,_G.AutoBuyLegendarySword_Hop,function(value)
    _G.AutoBuyLegendarySword_Hop = value
    end)
    
    AutoQuest:Seperator("Enchancement Colour",_G.ColorQuest)
    
    AutoQuest:Toggle("Auto Enchancement Colour",_G.ColorQuest,_G.AutoBuyEnchancementColour,function(value)
    _G.AutoBuyEnchancementColour = value
    end)
    
    AutoQuest:Toggle("Auto Enchancement Hop",_G.ColorQuest,_G.AutoBuyEnchancementColour_Hop,function(value)
    _G.AutoBuyEnchancementColour_Hop = value
    end)
    
    spawn(function()
    while wait() do
    if _G.AutoBuyEnchancementColour then
    local args = {
    [1] = "ColorsDealer",
    [2] = "2"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    if _G.AutoBuyEnchancementColour_Hop and _G.AutoBuyEnchancementColour and not World1 then
    wait(10)
    Hop()
    end
    end
    end
    end)
    
    AutoQuest:Seperator("Other",_G.ColorQuest)
    
    AutoQuest:Toggle("Auto Rainbow Haki",_G.ColorQuest,_G.Auto_Rainbow_Haki,function(value)
    _G.Auto_Rainbow_Haki = value
    StopTween(_G.Auto_Rainbow_Haki)
    end)
    
    spawn(function()
    pcall(function()
    while wait(.1) do
    if _G.Auto_Rainbow_Haki then
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
    topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
    wait(1.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
    end
    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
    if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Stone" then
    OldCFrameRainbow = v.HumanoidRootPart.CFrame
    repeat task.wait()
    EquipWeapon(_G.SelectWeapon)
    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    v.HumanoidRootPart.CanCollide = false
    v.HumanoidRootPart.CFrame = OldCFrameRainbow
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
    end
    end
    else
    topos(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
    end
    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
    if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Island Empress" then
    OldCFrameRainbow = v.HumanoidRootPart.CFrame
    repeat task.wait()
    EquipWeapon(_G.SelectWeapon)
    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    v.HumanoidRootPart.CanCollide = false
    v.HumanoidRootPart.CFrame = OldCFrameRainbow
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
    end
    end
    else
    topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
    end
    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
    if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Kilo Admiral" then
    OldCFrameRainbow = v.HumanoidRootPart.CFrame
    repeat task.wait()
    EquipWeapon(_G.SelectWeapon)
    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    v.HumanoidRootPart.CanCollide = false
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.HumanoidRootPart.CFrame = OldCFrameRainbow
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
    end
    end
    else
    topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
    end
    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Captain Elephant" then
    OldCFrameRainbow = v.HumanoidRootPart.CFrame
    repeat task.wait()
    EquipWeapon(_G.SelectWeapon)
    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    v.HumanoidRootPart.CanCollide = false
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.HumanoidRootPart.CFrame = OldCFrameRainbow
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
    end
    end
    else
    topos(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
    end
    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Beautiful Pirate" then
    OldCFrameRainbow = v.HumanoidRootPart.CFrame
    repeat task.wait()
    EquipWeapon(_G.SelectWeapon)
    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    v.HumanoidRootPart.CanCollide = false
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.HumanoidRootPart.CFrame = OldCFrameRainbow
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
    end
    end
    else
    topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
    end
    else
    topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
    wait(1.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
    end
    end
    end
    end
    end)
    end)
    
    AutoQuest:Toggle("Auto Observation Haki v2",_G.ColorQuest,_G.AutoObservationv2,function(value)
    _G.AutoObservationv2 = value
    StopTween(_G.AutoObservationv2)
    end)
    
    spawn(function()
    while wait() do
    pcall(function()
    if _G.AutoObservationv2 then
    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 3 then
    _G.AutoMusketeerHat = false
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and  game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple") then
    repeat
    topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
    wait()
    until not _G.AutoObservationv2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
    wait(.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
    repeat
    topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
    wait()
    until not _G.AutoObservationv2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
    wait(.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
    wait(1)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
    else
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
    v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
    wait()
    firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
    wait()
    end
    end
    end
    else
    _G.AutoMusketeerHat = true
    end
    end
    end)
    end
    end)

AutoQuest:Seperator("Cursed Dual Katana",_G.ColorQuest)
    
AutoQuest:Toggle("Auto Yama",_G.ColorQuest,_G.AutoYama,function(value)
    _G.AutoYama = value
    StopTween(_G.AutoYama)
end)
    
spawn(function()
    while wait() do
        if _G.AutoYama then
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
            repeat wait(.1)
            fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
            until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
            end
        end
    end
end)

AutoQuest:Toggle("Auto Tushita",_G.ColorQuest,_G.Autotushita,function(vu)
    _G.Autotushita = vu
    StopTween( _G.Autotushita)
end)

local TushitaPos = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
spawn(function()
    while wait() do
        if  _G.Autotushita and World3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Longma" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.Autotushita or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                if BypassTP then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TushitaPos.Position).Magnitude > 1500 then
                BTP(TushitaPos)
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TushitaPos.Position).Magnitude < 1500 then
                topos(TushitaPos)
                end
            else
                topos(TushitaPos)
            end
                topos(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
            end)
        end
    end
end)

AutoQuest:Toggle("Auto Cdk",_G.ColorQuest,false,function(Value)
    Auto_Cursed_Dual_Katana = Value
    StopTween(Auto_Cursed_Dual_Katana)
end)

spawn(function()
    while wait() do
        pcall(function()
            if Auto_Cursed_Dual_Katana then
                if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                            EquipWeapon("Tushita")
                        end
                    elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            EquipWeapon("Yama")

                        end
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if Auto_Cursed_Dual_Katana then
                if GetMaterial("Alucard Fragment") == 0 then
                    Auto_Quest_Yama_1 = true
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                elseif GetMaterial("Alucard Fragment") == 1 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = true
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                elseif GetMaterial("Alucard Fragment") == 2 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = true
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                elseif GetMaterial("Alucard Fragment") == 3 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = true
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                elseif GetMaterial("Alucard Fragment") == 4 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = true
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                elseif GetMaterial("Alucard Fragment") == 5 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = true
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                elseif GetMaterial("Alucard Fragment") == 6 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss") then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton Boss" or v.Name == "Cursed Skeleton" then
                                    if v.Humanoid.Health > 0 then
                                        EquipWeapon(Sword)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                    end
                                end
                            end
                        end
                    else
                        if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                            wait(1)
                            topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            topos(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                        else
                            topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                        end   
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if Auto_Quest_Yama_1 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Mythological Pirate" then
                            repeat wait()
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        end
                    end
                else
                    topos(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if Auto_Quest_Yama_2 then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        v.HazeESP.Size = UDim2.new(50,50,50,50)
                        v.HazeESP.MaxDistance = "inf"
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        v.HazeESP.Size = UDim2.new(50,50,50,50)
                        v.HazeESP.MaxDistance = "inf"
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
                    v.HumanoidRootPart.CFrame = PosMonsEsp
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                        vc.Velocity = Vector3.new(0, 0, 0)
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if Auto_Quest_Yama_2 then 
            pcall(function() 
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        repeat wait()
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                topos(v.HumanoidRootPart.CFrame * Pos)
                            else
                                EquipWeapon(Sword)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                --v.Humanoid:ChangeState(11)
                                --v.Humanoid:ChangeState(14)
                                PosMon = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                Click()
                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end							
                            end      
                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
                    else
                        for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                            if y:FindFirstChild("HazeESP") then
                                if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                    topos(y.HumanoidRootPart.CFrameMon* Farm_Mode)
                                else
                                    topos(y.HumanoidRootPart.CFrame * Farm_Mode)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Auto_Quest_Yama_3 then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
                    topos(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                    repeat wait()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Hell's Messenger" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            EquipWeapon(Sword)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
                                    end
                                end
                            end
                        else
                            wait(5)
                            topos(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)        
                            topos(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            topos(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            topos(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                        end
                    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Soul Reaper" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                    end
                                end
                            end
                        else
                            topos(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_1 then
            topos(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
            wait(5)
            topos(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
            wait(5)
            topos(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_2 then
            pcall(function()
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                repeat wait()
                                    EquipWeapon(Sword)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                            end
                        end
                    end
                else
                    topos(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                if v.Humanoid.Health > 0 then
                                    repeat wait()
                                        EquipWeapon(Sword)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                        if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                end
                            end
                        end
                    else
                        topos(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                    end
                elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                    repeat wait()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Heaven's Guardian [Lv. 2200] [Boss]" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            EquipWeapon(Sword)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
                                    end
                                end
                            end
                        else
                            wait(5)
                            topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)        
                            topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            topos(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                        end
                    until not Auto_Cursed_Dual_Katana or not Auto_Quest_Tushita_3 or GetMaterial("Alucard Fragment") == 6
                end
            end)
        end
    end
end)

AutoQuest:Seperator("Race V0 - 3",_G.ColorQuest)

AutoQuest:Toggle("Auto Evo Race",_G.ColorQuest,_G.Auto_EvoRace,function(value)
    _G.Auto_EvoRace = value
    StopTween(_G.Auto_EvoRace)
    end)
    
    spawn(function()
    pcall(function()
    while wait(.1) do
    if _G.Auto_EvoRace then
    if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
    topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
    if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
    wait(1.3)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
    end
    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
    pcall(function()
    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
    topos(game:GetService("Workspace").Flower1.CFrame)
    elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
    topos(game:GetService("Workspace").Flower2.CFrame)
    elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
    if game:GetService("Workspace").Enemies:FindFirstChild("Zombie [Lv. 950]") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Zombie [Lv. 950]" then
    repeat task.wait()
    AutoHaki()
    EquipWeapon(_G.SelectWeapon)
    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
    v.HumanoidRootPart.CanCollide = false
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
    PosMonEvo = v.HumanoidRootPart.CFrame
    StartEvoMagnet = true
    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_EvoRace == false
    StartEvoMagnet = false
    end
    end
    else
    StartEvoMagnet = false
    topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
    end
    end
    end)
    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
    end
    end
    end
    end
    end)
    end)
    
    AutoQuest:Toggle("Auto Holy Torch",_G.ColorQuest,_G.AutoHolyTorch,function(value)
    _G.AutoHolyTorch = value
    StopTween(_G.AutoHolyTorch)
    end)
    
    spawn(function()
    while wait() do
    if _G.AutoHolyTorch then
    pcall(function()
    wait(1)
    TP(CFrame.new(-10752, 417, -9366))
    wait(1)
    TP(CFrame.new(-11672, 334, -9474))
    wait(1)
    TP(CFrame.new(-12132, 521, -10655))
    wait(1)
    TP(CFrame.new(-13336, 486, -6985))
    wait(1)
    TP(CFrame.new(-13489, 332, -7925))
    end)
    end
    end
    end)
    
    spawn(function()
    while task.wait() do
    pcall(function()
    if _G.BringMonster then
    CheckLevel2()
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if _G.AutoFarm and StartMagnet and v.Name == Ms and (Ms == "Factory Staff [Lv. 800]" or Ms == "Monkey [Lv. 14]" or Ms == "Dragon Crew Warrior [Lv. 1575]" or Ms == "Dragon Crew Archer [Lv. 1600]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 31 then
    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
    v.HumanoidRootPart.CFrame = PosMon
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
    elseif _G.AutoFarm and StatrMagwnet and v.Name == Ms and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 31 then
    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
    v.HumanoidRootPart.CFrame = PosMon
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
    end
    if _G.AutoEctoplasm and StartEctoplasmMagnet then
    if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= 250 then
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.HumanoidRootPart.CFrame = EctoplasmMon
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
    end
    if _G.AutoRengoku and StartRengokuMagnet then
    if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    v.HumanoidRootPart.CFrame = RengokuMon
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
    end
    if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
    if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    v.HumanoidRootPart.CFrame = MusketeerHatMon
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
    end
    if _G.Auto_EvoRace and StartEvoMagnet then
    if v.Name == "Zombie [Lv. 950]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    v.HumanoidRootPart.CFrame = PosMonEvo
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
    end
    if _G.AutoBartilo and AutoBartiloBring then
    if v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    v.HumanoidRootPart.CFrame = PosMonBarto
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
    end
    if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
    if v.Name == "Monkey [Lv. 14]" then
    if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
    elseif v.Name == "Factory Staff [Lv. 800]" then
    if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
    elseif v.Name == Ms then
    if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
    end
    end
    if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
    if v.Name == "Monkey [Lv. 14]" then
    if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    v.HumanoidRootPart.CFrame = PosMonMasteryGun
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
    elseif v.Name == "Factory Staff [Lv. 800]" then
    if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    v.HumanoidRootPart.CFrame = PosMonMasteryGun
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
    elseif v.Name == Mon then
    if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    v.HumanoidRootPart.CFrame = PosMonMasteryGun
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
    end
    end
    if _G.Auto_Bone and StartMagnetBoneMon then
    if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    v.HumanoidRootPart.CFrame = PosMonBone
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
    end
    if _G.AutoDoughtBoss and MagnetDought then
    if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
    end
    if _G.AutoCandy and StartMagnetCandy then
    if (v.HumanoidRootPart.Position - PosMonCandy.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    v.Humanoid:ChangeState(14)
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    v.HumanoidRootPart.CFrame = PosMonCandy
    if v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
    end
    end
    end
    end)
    end
    end)

end

-- \\ Status Table // --

do

    Stats:Seperator("Auto Stats",_G.ColorStats)
    
    local Pointstat = Stats:Label("Stat Points")
    
    spawn(function()
    while wait() do
    pcall(function()
    Pointstat:Set("Stat Points : "..tostring(game:GetService("Players")["LocalPlayer"].Data.Points.Value))
    end)
    end
    end)
    
    Stats:Toggle("Auto Melee",_G.ColorStats,_G.Auto_Melee,function(value)
    _G.Auto_Melee = value
    end)
    
    Stats:Toggle("Auto Defense",_G.ColorStats,_G.Auto_Defense,function(value)
    _G.Auto_Defense = value
    end)
    
    Stats:Toggle("Auto Sword",_G.ColorStats,_G.Auto_Sword,function(value)
    _G.Auto_Sword = value
    end)
    
    Stats:Toggle("Auto Gun",_G.ColorStats,_G.Auto_Gun,function(value)
    _G.Auto_Gun = value
    end)
    
    Stats:Toggle("Auto Devil Fruits",_G.ColorStats,_G.Auto_DevilFruit,function(value)
    _G.Auto_DevilFruit = value
    end)
    
    _G.PointStats = 1
    Stats:Slider("Select Point",_G.ColorStats,1,1000,1,function(value)
    _G.PointStats = value
    end)
    
    spawn(function()
    while wait() do
    pcall(function()
    if _G.Auto_Melee then
    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
    end
    end
    end)
    end
    end)
    
    spawn(function()
    while wait() do
    pcall(function()
    if _G.Auto_Defense then
    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",_G.PointStats)
    end
    end
    end)
    end
    end)
    
    spawn(function()
    while wait() do
    pcall(function()
    if _G.Auto_Sword then
    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",_G.PointStats)
    end
    end
    end)
    end
    end)
    
    spawn(function()
    while wait() do
    pcall(function()
    if _G.Auto_Gun then
    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",_G.PointStats)
    end
    end
    end)
    end
    end)
    
    spawn(function()
    while wait() do
    pcall(function()
    if _G.Auto_DevilFruit then
    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
    local args = {
        [1] = "AddPoint",
        [2] = "Demon Fruit",
        [3] = _G.PointStats
    }
    Game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    end
    end
    end)
    end
end)
end

-- \\ Seabeast Table // --

do

spawn(function()
    while wait() do
        if AllWeapon then
            pcall(function()
                EquipWeapon(_G.Setting_table.Weapon)
                wait(2)
                EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                wait(10)
            end)
        end
    end
end)

Sea:Toggle("Buy & Sail",_G.ColorSea,_G.AutoSail,function(val)
    _G.AutoRemover = val
    StopTween(_G.AutoSail)
    StopTween(_G.SendShip)
if _G.AutoRemover == true then
    repeat task.wait()
    local Remover = game.Workspace.Boats:FindFirstChild("Guardian") if Remover then Remover:Destroy() end
    print("Work")
    local Remover2 = game.Workspace.Boats:FindFirstChild("Guardian") if Remover2 then Remover2:Destroy() end
    print("Work")
    local Remover3 = game.Workspace.Boats:FindFirstChild("Guardian") if Remover3 then Remover3:Destroy() end
    print("Work")
    local Remover4 = game.Workspace.Boats:FindFirstChild("Guardian") if Remover4 then Remover4:Destroy() end
    print("Work")
    local Remover5 = game.Workspace.Boats:FindFirstChild("Guardian") if Remover5 then Remover5:Destroy() end
    print("Work")
    local Remover6 = game.Workspace.Boats:FindFirstChild("Guardian") if Remover6 then Remover6:Destroy() end
    print("Work")
    local Remover7 = game.Workspace.Boats:FindFirstChild("Guardian") if Remover7 then Remover7:Destroy() end
    print("Work")
    local Remover8 = game.Workspace.Boats:FindFirstChild("Guardian") if Remover8 then Remover8:Destroy() end
    print("Work")
    local Remover9 = game.Workspace.Boats:FindFirstChild("Guardian") if Remover9 then Remover9:Destroy() end
    print("Work")
    local Remover0 = game.Workspace.Boats:FindFirstChild("Guardian") if Remover0 then Remover0:Destroy() end
    print("Work")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Boat Remover"; 
        Text = "Removing Boat Completed"; 
        Icon = "http://www.roblox.com/asset/?id=14355269935";
        Duration = 1;
        Button1 = "Okay"
    })	
    _G.AutoRemover = false
    _G.AutoSail = true
    _G.Removing = true
    until not _G.AutoRemover
    end
end)
    
    task.spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoSail then
    
                    game.Workspace.Gravity = 0
                    game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(15,false)
                    game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(16,false)
    
                    if not game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                        if not game:GetService("Workspace").Boats:FindFirstChild("Guardian") then 
                                buyb = TPP(CFrame.new(-16206.9014, 7.75759554, 404.552338, -0.0348494053, 0, 0.999392569, 0, 1, 0, -0.999392569, 0, -0.0348494053))
                                    if (CFrame.new(-16206.9014, 7.75759554, 404.552338, -0.0348494053, 0, 0.999392569, 0, 1, 0, -0.999392569, 0, -0.0348494053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                        if buyb then buyb:Stop() end
                                        local args = {
                                            [1] = "BuyBoat",
                                            [2] = "Guardian"
                                        }
    
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        wait(0.8)
                                        print("Anchored True")
                                        game:GetService("StarterGui"):SetCore("SendNotification", {
                                            Title = "Boat Seller"; 
                                            Text = "Guardian Detected"; 
                                            Icon = "http://www.roblox.com/asset/?id=14355269935";
                                            Duration = 3;
                                            Button1 = "Okay"
                                        })
                                    end
                            elseif game:GetService("Workspace").Boats:FindFirstChild("Guardian") then
                            _G.WalkWater = false
                            print("FalseWater")
                            TPB3(CFrame.new(-17824.543, 20.7565479, 819.378174, -0.334050685, -0.018375, 0.942375958, -0.0549235903, 0.998490572, -3.41900369e-10, -0.940953553, -0.051758673, -0.334555686))
                        print("anchored false 2")
                        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                            TPP(game:GetService("Workspace").Boats.Guardian.VehicleSeat.CFrame * CFrame.new(0,1,0))
                            elseif game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                            _G.AutoBoat2 = true
                            TPBSafe(CFrame.new(-43186.0938, 20.755722, 14150.7451, 0.404593438, -0.026889408, 0.914101243, 0.0663140193, 0.9977988, 5.95448357e-10, -0.912089169, 0.06061773, 0.405485988))
                            StopTween(_G.Testing2)
                            if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                TPP(game:GetService("Workspace").Boats.Guardian.VehicleSeat.CFrame * CFrame.new(0,1,0))
                                _G.AutoSail = false
                                print("falseautosail")
                                StopTween(_G.AutoSail)
                            end
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if _G.Removing then
            pcall(function()
                    repeat wait()
                    local Remover01 = game.StarterGui:FindFirstChild("Smokescreen") if Remover01 then Remover01:Destroy() end
                    local Remover012 = game.Lighting:FindFirstChild("SeaTerrorCC") if Remover012 then Remover012:Destroy() end
                    local Remover0123 = game.Lighting:FindFirstChild("LightingLayers") if Remover0123 then Remover0123:Destroy() end
                until not _G.Removing
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.AutoBoat2 then
            pcall(function()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 750 then
                         if v:FindFirstChild("HumanoidRootPart") then
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false

                            tween3:Cancel()

                            repeat task.wait()
                            AutoHaki()
                            until not v.Parent or not v.Humanoid.Health <= 0 or not _G.AutoBoat2
                        else
                        if game:GetService("Workspace").Boats:FindFirstChild("Guardian") then
                            if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                            TPP(game:GetService("Workspace").Boats.Guardian.VehicleSeat.CFrame * CFrame.new(0,1,0))
                            elseif game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                            tween3:Play()
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Sea:Toggle("Terror Shark [Beta]",_G.ColorSea,false,function(val)
    _G.TerShark = val
    StopTween(_G.TerShark)
    if _G.TerShark == true then
        _G.AutoFarm = false
        _G.AutoFarmFruitMastery = false
    end
end)

spawn(function()
    while wait() do
        if _G.TerShark then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
                     if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                        PosMon = v.HumanoidRootPart.CFrame
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        v.Humanoid.JumpPower = 0
                        v.Humanoid:ChangeState(11)
                        _G.FastAttack = true
                        print("StartMagnet")
                    repeat wait()
                        AutoHaki()
                        EquipWeapon(_G.Setting_table.Weapon)
                        AutoSkill = true
                        
                        Skillaimbot = true
                        TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,60,0) * PosY)
                        game:GetService'VirtualUser':CaptureController()
                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        print("fast")
                        until not v.Parent or not v.Humanoid.Health <= 0 or not _G.TerShark
                    else
                        if game.ReplicatedStorage:FindFirstChild("Terrorshark") then
                            topos(game.ReplicatedStorage:FindFirstChild("Terrorshark").HumanoidRootPart.CFrame * CFrame.new(0,25,0))
                            print("dia mencari st")
                        else
                        if (game:GetService("Workspace").Boats.Guardian.VehicleSeat.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 2500 then
                        TPP(game:GetService("Workspace").Boats.Guardian.VehicleSeat.CFrame * CFrame.new(0,1,0))
                        AutoSkill = false
                        Skillaimbot = false
                        AllWeapon = false
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Sea:Toggle("Piranha [Work]",_G.ColorSea,false,function(val)
    _G.Piranas = val
    StopTween(_G.Piranas)
    if _G.Piranas == true then
        _G.AutoFarm = false
        _G.AutoFarmFruitMastery = false
    end
end)

spawn(function()
    while wait() do
        if _G.Piranas then
            pcall(function()
                if game.workspace.Enemies:FindFirstChild("Piranha") then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                        PosMon = v.HumanoidRootPart.CFrame
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        v.Humanoid.JumpPower = 0
                        v.Humanoid:ChangeState(11)
                        print("StartMagnet")
                        _G.FastAttack = true
                    repeat wait()
                        AutoHaki()
                        TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0) * PosY)
                        EquipWeapon(_G.Setting_table.Weapon)
                        AutoSkill = true
                        
                        Skillaimbot = true
                        game:GetService'VirtualUser':CaptureController()
                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        print("fast")
                        until not v.Parent or not v.Humanoid.Health <= 0 or not _G.Piranas
                    else
                    if game.ReplicatedStorage:FindFirstChild("Piranha") then
                        print("dia mencari ph")
                            topos(game.ReplicatedStorage:FindFirstChild("Piranha").HumanoidRootPart.CFrame * CFrame.new(0,25,0))
                                 AutoSkill = false
                                 Skillaimbot = false
                                 AllWeapon = false
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Sea:Toggle("Shark [Work]",_G.ColorSea,false,function(val)
    _G.Sharky = val
    StopTween(_G.Sharky)
    if _G.Sharky == true then
        _G.AutoFarm = false
        _G.AutoFarmFruitMastery = false
    end
end)

spawn(function()
    while wait() do
        if _G.Sharky then
            pcall(function()
                if game.workspace.Enemies:FindFirstChild("Shark") then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                        PosMon = v.HumanoidRootPart.CFrame
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        v.Humanoid.JumpPower = 0
                        v.Humanoid:ChangeState(11)
                        print("StartMagnet")
                        _G.FastAttack = true
                    repeat wait()
                        AutoHaki()
                        TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0) * PosY)
                        EquipWeapon(_G.Setting_table.Weapon)
                        AutoSkill = true
                        
                        Skillaimbot = true
                        game:GetService'VirtualUser':CaptureController()
                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        print("fast")
                        until not v.Parent or not v.Humanoid.Health <= 0 or not _G.Sharky
                    else
                    if game.ReplicatedStorage:FindFirstChild("Shark") then
                        print("dia mencari sh")
                            topos(game.ReplicatedStorage:FindFirstChild("Shark").HumanoidRootPart.CFrame * CFrame.new(0,25,0))
                                 AutoSkill = false
                                 Skillaimbot = false
                                 AllWeapon = false
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Sea:Toggle("Fish Boat [Beta]",_G.ColorSea,false,function(val)
    _G.FishBoat = val
    StopTween(_G.FishBoat)
    if _G.FishBoat == true then
        _G.AutoFarm = false
        _G.AutoFarmFruitMastery = false
    end
end)

spawn(function()
    while wait() do
        if _G.FishBoat then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (v.Sails.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 2500 then
                    if v:FindFirstChild("Sails") and v.Health.Value > 0 then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                        PosMon = v.Sails.CFrame
                        print("StartMagnet")
                        _G.FastAttack = true
                    repeat wait()
                        AutoHaki()
                        AllWeapon = true
                        TP1(v.Sails.CFrame * CFrame.new(0,15,0))
                        AutoSkill = true
                        
                        Skillaimbot = true
                        game:GetService'VirtualUser':CaptureController()
                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        print("fast")
                        until not v.Parent or not v.Health <= 0 or not _G.TerShark
                    else
                        if game.ReplicatedStorage:FindFirstChild("FishBoat") then
                        print("dia mencari bb")
                        topos(game.ReplicatedStorage:FindFirstChild("FishBoat").VehicleSeat.CFrame * CFrame.new(0,5,0))
                        AutoSkill = false
                        Skillaimbot = false
                        AllWeapon = false
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Sea:Toggle("Pirate [Beta]",_G.ColorSea,false,function(val)
    _G.BrigadeShips = val
    StopTween(_G.BrigadeShips)
    if _G.BrigadeShips == true then
        _G.AutoFarm = false
        _G.AutoFarmFruitMastery = false
    end
end)

spawn(function()
    while wait() do
        if _G.BrigadeShips then
            pcall(function()
                if game.workspace.Enemies:FindFirstChild("PirateBrigade") then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (v.VehicleSeat.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 2500 then
                    if v:FindFirstChild("VehicleSeat") and v.Health.Value > 0 then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                        PosMon = v.VehicleSeat.CFrame
                        print("StartMagnet")
                        _G.FastAttack = true
                    repeat wait()
                        AutoHaki()
                        TP1(v.VehicleSeat.CFrame * CFrame.new(0,15,0))
                        AllWeapon = true
                        AutoSkill = true
                        
                        Skillaimbot = true
                        game:GetService'VirtualUser':CaptureController()
                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        print("fast")
                        until not v.Parent or not v.Health.Value <= 0 or not _G.BrigadeShips
                    else
                    if game.ReplicatedStorage:FindFirstChild("PirateGrandBrigade") then
                        print("dia mencari bb")
                            topos(game.ReplicatedStorage:FindFirstChild("PirateGrandBrigade").VehicleSeat.CFrame * CFrame.new(0,4,0))
                                 AutoSkill = false
                                 Skillaimbot = false
                                 AllWeapon = false
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Sea:Toggle("Grand Pirate [Beta]",_G.ColorSea,false,function(val)
    _G.BrigadeShip = val
    StopTween(_G.BrigadeShip)
    if _G.BrigadeShip == true then
        _G.AutoFarm = false
        _G.AutoFarmFruitMastery = false
    end
end)

spawn(function()
    while wait() do
        if _G.BrigadeShip then
            pcall(function()
                if game.workspace.Enemies:FindFirstChild("PirateGrandBrigade") then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (v.VehicleSeat.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 2500 then
                    if v:FindFirstChild("VehicleSeat") and v.Health.Value > 0 then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                        PosMon = v.VehicleSeat.CFrame
                        print("StartMagnet")
                        _G.FastAttack = true
                    repeat wait()
                        AutoHaki()
                        TP1(v.VehicleSeat.CFrame * CFrame.new(0,15,0))
                        AllWeapon = true
                        AutoSkill = true
                        Skillaimbot = true
                        game:GetService'VirtualUser':CaptureController()
                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        print("fast")
                        until not v.Parent or not v.Health.Value <= 0 or not _G.BrigadeShip
                    else
                    if game.ReplicatedStorage:FindFirstChild("PirateGrandBrigade") then
                        print("dia mencari bg")
                            topos(game.ReplicatedStorage:FindFirstChild("PirateGrandBrigade").VehicleSeat.CFrame * CFrame.new(0,4,0))
                                 AutoSkill = false
                                 Skillaimbot = false
                                 AllWeapon = false
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Sea:Toggle("SeaBeast [Beta]",_G.ColorSea,false,function(sea)
    _G.Beast = sea
    StopTween(_G.Beast)
    if _G.Beast == true then
        _G.AutoFarm = false
        _G.AutoFarmFruitMastery = false
    end
end)

spawn(function()
    while wait() do
        if _G.Beast then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 5000 then
                    if v:FindFirstChild("HumanoidRootPart") and v.Health.Value > 0 then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                        PosMon = v.HumanoidRootPart.CFrame
                        print("StartMagnet")
                    repeat wait()
                        AutoHaki()
                        TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,300,0) * PosY)
                        AllWeapon = true
                        AutoSkill = true
                        Skillaimbot = true
                        game:GetService'VirtualUser':CaptureController()
                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        print("fast")  
                    until not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v.Health.Value <= 0 or not _G.Beast
                    else
                        if game.ReplicatedStorage:FindFirstChild("SeaBeast1") then
                            print("dia mencari s")
                            TP1(game.ReplicatedStorage:FindFirstChild("SeaBeast1").HumanoidRootPart.CFrame * CFrame.new(0,2000,0))
                                 AutoSkill = false
                                 Skillaimbot = false
                                 AllWeapon = false
                            end
                        end
                    end
                end
            end)
        end
    end
end)

end

-- \\ Combat Table // --

do
    local SelectedPly = Combat:Dropdown("Select Players",_G.ColorCombat,Playerslist,function(value)
    _G.SelectPly = value
    end)
    
    Combat:Button("Refresh Player",_G.ColorCombat,function()
    Playerslist = {}
    SelectedPly:Clear()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
    SelectedPly:Add(v.Name)
    end
    end)
    
    Combat:Toggle("Spectate Player",_G.ColorCombat,false,function(value)
    SpectatePlys = value
    local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
    local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPly)
    repeat wait(.1)
    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid
    until SpectatePlys == false
    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    end)
    
    Combat:Toggle("Teleport",_G.ColorCombat,false,function(value)
    _G.TeleportPly = value
    pcall(function()
    if _G.TeleportPly then
    repeat topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
    end
    StopTween(_G.TeleportPly)
    end)
    end)
    
    Combat:Toggle("Auto Farm Player",_G.ColorCombat,false,function(value)
    _G.Auto_Kill_Ply = value
    StopTween(_G.Auto_Kill_Ply)
    end)
    
    spawn(function()
    while wait() do
    if _G.Auto_Kill_Ply then
    pcall(function()
    if _G.SelectPly ~= nil then
    if game.Players:FindFirstChild(_G.SelectPly) then
    if game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
    repeat task.wait()
    EquipWeapon(_G.SelectWeapon)
    AutoHaki()
    game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CanCollide = false
    topos(game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
    spawn(function()
    pcall(function()
    if _G.SelectWeapon == SelectWeaponSword then
    local args = {
    [1] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position,
    [2] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart
    }
    game:GetService("Players").LocalPlayer.Character[SelectWeaponMelee].RemoteFunctionShoot:InvokeServer(unpack(args))
    else
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
    end
    end)
    end)
    until game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(_G.SelectPly) or not _G.Auto_Kill_Ply
    end
    end
    end
    end)
    end
    end
end)
    
    Combat:Seperator("Aimbot",_G.ColorCombat)
    
    spawn(function()
    while wait() do
    pcall(function()
    local MaxDistance = math.huge
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    if v.Name ~= game:GetService("Players").LocalPlayer.Name then
    local Distance = v:DistanceFromCharacter(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position)
    if Distance < MaxDistance then
    MaxDistance = Distance
    PlayerSelectAimbot = v.Name
    end
    end
    end
    end)
    end
    end)
    
    Combat:Toggle("Aimbot Gun",_G.ColorCombat,false,function(value)
    _G.Aimbot_Gun = value
    end)
    
    spawn(function()
    while task.wait() do
    if _G.Aimbot_Gun and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponMelee) then
    pcall(function()
    game:GetService("Players").LocalPlayer.Character[SelectWeaponMelee].Cooldown.Value = 0
    local args = {
    [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position,
    [2] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart
    }
    game:GetService("Players").LocalPlayer.Character[SelectWeaponMelee].RemoteFunctionShoot:InvokeServer(unpack(args))
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end)
    end
    end
    end)
    
    Combat:Toggle("Aimbot Skill",_G.ColorCombat,false,function(value)
    _G.Aimbot_Skill = value
    end)
    
    spawn(function()
    pcall(function()
    while task.wait() do
    if _G.Aimbot_Skill and PlayerSelectAimbot ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
    local args = {
    [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position
    }
    
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name).RemoteEvent:FireServer(unpack(args))
    end
    end
    end)
    end)
    
    Combat:Seperator("PvP",_G.ColorCombat)
    
    Combat:Toggle("Enabled PvP",_G.ColorCombat,false,function(value)
    _G.EnabledPvP = value
    end)
    
    spawn(function()
    pcall(function()
    while wait(.1) do
    if _G.EnabledPvP then
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
    end
    end
    end
    end)
    end)
    
    Combat:Toggle("Safe Mode",_G.ColorCombat,false,function(value)
    _G.Safe_Mode = value
    StopTween(_G.Safe_Mode)
    end)
    
    spawn(function()
    pcall(function()
    while wait() do
    if _G.Safe_Mode then
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
    end
    end
    end)
    end)
    
    Combat:Button("Respawn",_G.ColorCombat,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
    wait()
    end)
    
    Combat:Seperator("Bounty",_G.ColorCombat)
    
    local Current = Combat:Label("Current Bounties :")
    
    local Bounty = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
    local sub = string.sub
    local len = string.len
    spawn(function()
    while wait() do
    pcall(function()
    if len(Bounty) == 4 then
    Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."K"
    elseif len(Bounty) == 5 then
    Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."K"
    elseif len(Bounty) == 6 then
    Bounty1 = sub(Bounty,1,3).."."..sub(Bounty,4,5).."K"
    elseif len(Bounty) == 7 then
    Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."M"
    elseif len(Bounty) == 8 then
    Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."M"
    elseif len(Bounty) <= 3 then
    Bounty1 = Bounty
    end
    if tonumber(Bounty) == 25000000 then
    Current:Set("Current Bounties : "..Bounty1.." [ Max ]")
    elseif tonumber(Bounty) < 25000000 then
    Current:Set("Current Bounties : "..Bounty1)
    end
    end)
    end
    end)
    
    local Earn = Combat:Label("Earned",_G.ColorCombat)
    local OldBounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
    local Bounty = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
    local Earned = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value - OldBounty)
    local sub = string.sub
    local len = string.len
    spawn(function()
    while wait() do
    pcall(function()
    if len(Earned) == 4 then
    Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."K"
    elseif len(Earned) == 5 then
    Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."K"
    elseif len(Earned) == 6 then
    Earned1 = sub(Earned,1,3).."."..sub(Earned,4,5).."K"
    elseif len(Earned) == 7 then
    Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."M"
    elseif len(Earned) == 8 then
    Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."M"
    elseif len(Earned) <= 3 then
    Earned1 = Earned
    end
    Earn:Set("Earned : "..tonumber(Earned1))
    end)
    end
    end)
    
    Combat:Toggle("Auto Farm Bounty",_G.ColorCombat,_G.AutoFarmBounty,function(value)
    _G.AutoFarmBounty = value
    StopTween(_G.AutoFarmBounty)
    end)
    
    spawn(function()
    while wait() do
    pcall(function()
    if _G.AutoFarmBounty then
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if v:IsA("Shirt") then
    v:Destroy()
    end
    if v:IsA("Pants") then
    v:Destroy()
    end
    if v:IsA("Accessory") then
    v:Destroy()
    end
    end
    end
    end)
    end
    end)
    
    spawn(function()
    pcall(function()
    if _G.AutoFarmBounty then
    while wait() do
    if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
    end
    end
    end
    end)
    end)
    
    spawn(function()
    while wait() do
    pcall(function()
    if _G.AutoFarmBounty then
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
    end
    end)
    end
    end)
    
    spawn(function()
    while task.wait() do
    pcall(function()
    if _G.AutoFarmBounty then
    game:GetService("Players").LocalPlayer.Character[SelectWeaponMelee].Cooldown.Value = 0
    spawn(function()
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = true
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = true
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = true
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = true
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = true
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = false
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = true
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = true
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = false
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = false
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = false
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = false
    game.Players.LocalPlayer.Character.Animate.Disabled = true
    end)
    end
    end)
    end
    end)
    CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
    MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
    Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
    HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
    spawn(function()
    while wait() do
    pcall(function()
    if _G.AutoFarmBounty then
    for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
    if v.Name ~= game.Players.LocalPlayer.Name then
    if v:WaitForChild("Humanoid").Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 17000 then
    plyselecthunthelpold = v.Humanoid.Health
    repeat task.wait()
    EquipWeapon(SelectWeaponMelle)
    NameTarget = v.Name
    if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,60,-20))
    elseif tostring(game.Players.LocalPlayer.Team) == "Marines" then
    if game.Players[NameTarget].Team ~= game.Players.LocalPlayer.Team then
    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,60,-20))
    end
    end
    spawn(function()
    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
    StartCheckTarget = true
    end
    end)
    v.HumanoidRootPart.CanCollide = false
    spawn(function()
    pcall(function()
    local args = {
    [1] = v.HumanoidRootPart.Position,
    [2] = v.HumanoidRootPart
    }
    game:GetService("Players").LocalPlayer.Character[SelectWeaponMelee].RemoteFunctionShoot:InvokeServer(unpack(args))
    end)
    end)
    TargetSelectHunt = v.Humanoid
    until _G.AutoFarmBounty == false or v.Humanoid.Health == 0 or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or not v.Parent or NextplySelect == true
    NextplySelect = false
    StartCheckTarget = false
    end
    end
    end
    end
    end)
    end
    end)
    
    spawn(function()
    pcall(function()
    while task.wait() do
    if _G.AutoFarmBounty then
    game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible = false
    game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
    end
    end
    end)
    end)
    
    spawn(function()
    pcall(function()
    while wait() do
    if _G.AutoFarmBounty then
    if TargetSelectHunt ~= nil then
    if StartCheckTarget then
    wait(6.5)
    if TargetSelectHunt.Health == TargetSelectHunt.MaxHealth or TargetSelectHunt.Health >= plyselecthunthelpold then
    NextplySelect = true
    TargetSelectHunt = nil
    end
    end
    end
    end
    end
    end)
    end)
    
    spawn(function()
    pcall(function()
    while wait(.1) do
    if _G.AutoFarmBounty then
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
    end
    end
    end
    end)
    end)
    
    Combat:Toggle("Auto Farm Bounty Hop",_G.ColorCombat,_G.AutoFarmBounty_Hop,function(value)
    _G.AutoFarmBounty_Hop = value
    end)
    
    spawn(function()
    while wait() do
    if _G.AutoFarmBounty then
    if _G.AutoFarmBounty_Hop then
    pcall(function()
    wait(120)
    Hop()
    end)
    end
    end
    end
    end)
    
    Combat:Seperator("Misc Bounty",_G.ColorCombat)
    
    Combat:Button("Next Player",_G.ColorCombat,function()
    NextplySelect = true
    wait(.1)
    NextplySelect = false
    end)
    
    Combat:Slider("Lock Bounty",_G.ColorCombat,1,25000000,750000,function(value)
    _G.BountyLock = value
    end)
    
    Combat:Toggle("Start Bounty Lock",_G.ColorCombat,false,function(value)
    _G.StartBountyLock = value
    end)
    
    spawn(function()
    while wait() do
    if _G.StartBountyLock then
    pcall(function()
    if game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value >= _G.BountyLock then
    game:GetService("Players").LocalPlayer:Kick("Successfully! Bounty Farm")
    end
    end)
    end
    end
end)
end

-- \\ Teleport Table // --

do

if World3 then
Teleport:Toggle("Auto Mystic Island",_G.ColorTP,_G.AutoMysticIsland,function(value)
    _G.AutoMysticIsland = value
end)
        
spawn(function()
    while wait() do
        if _G.AutoMysticIsland then
            pcall(function()
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                topos(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame * CFrame.new(0,500,-200))
                    end
                end)
            end
        end
    end)
end
    
Teleport:Seperator("World - Monster",_G.ColorTP)
    
    Teleport:Button("Teleport To Old World",_G.ColorTP,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end)
    
    Teleport:Button("Teleport To Second Sea",_G.ColorTP,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end)
    
    Teleport:Button("Teleport To Third Sea",_G.ColorTP,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end)
    
    Teleport:Button("Teleport to Seabeast",_G.ColorTP,function()
    for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
    if v:FindFirstChild("HumanoidRootPart") then
    topos(v.HumanoidRootPart.CFrame*CFrame.new(0,100,0))
        end
    end
end)
    
Teleport:Seperator("Teleport - Island",_G.ColorTP)
    
if World1 then
    Teleport:Dropdown("Select Island",_G.ColorTP,{
    "WindMill",
    "Marine",
    "Middle Town",
    "Jungle",
    "Pirate Village",
    "Desert",
    "Snow Island",
    "MarineFord",
    "Colosseum",
    "Sky Island 1",
    "Sky Island 2",
    "Sky Island 3",
    "Prison",
    "Magma Village",
    "Under Water Island",
    "Fountain City",
    "Shank Room",
    "Mob Island"
    },function(value)
    _G.SelectIsland = value
    end)
end
    
if World2 then
    Teleport:Dropdown("Select Island",_G.ColorTP,{
    "The Cafe",
    "Frist Spot",
    "Dark Area",
    "Flamingo Mansion",
    "Flamingo Room",
    "Green Zone",
    "Factory",
    "Colossuim",
    "Zombie Island",
    "Two Snow Mountain",
    "Punk Hazard",
    "Cursed Ship",
    "Ice Castle",
    "Forgotten Island",
    "Ussop Island",
    "Mini Sky Island"
    },function(value)
    _G.SelectIsland = value
    end)
end
    
if World3 then
    Teleport:Dropdown("Select Island",_G.ColorTP,{
    "Mansion",
    "Port Town",
    "Great Tree",
    "Castle On The Sea",
    "MiniSky",
    "Hydra Island",
    "Floating Turtle",
    "Haunted Castle",
    "Ice Cream Island",
    "Peanut Island",
    "Cake Island"
    },function(value)
    _G.SelectIsland = value
    end)
end
    
    Teleport:Toggle("Teleport",_G.ColorTP,false,function(value)
    _G.TeleportIsland = value
    if _G.TeleportIsland == true then
    game.Workspace.Gravity = 0
    game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(15,false)
    game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(16,false)
    repeat wait()
    if _G.SelectIsland == "WindMill" then
    topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
    elseif _G.SelectIsland == "Marine" then
    topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
    elseif _G.SelectIsland == "Middle Town" then
    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
    elseif _G.SelectIsland == "Jungle" then
    topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
    elseif _G.SelectIsland == "Pirate Village" then
    topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
    elseif _G.SelectIsland == "Desert" then
    topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
    elseif _G.SelectIsland == "Snow Island" then
    topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
    elseif _G.SelectIsland == "MarineFord" then
    topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
    elseif _G.SelectIsland == "Colosseum" then
    topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
    elseif _G.SelectIsland == "Sky Island 1" then
    topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
    elseif _G.SelectIsland == "Sky Island 2" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
    elseif _G.SelectIsland == "Sky Island 3" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
    elseif _G.SelectIsland == "Prison" then
    topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
    elseif _G.SelectIsland == "Magma Village" then
    topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
    elseif _G.SelectIsland == "Under Water Island" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    elseif _G.SelectIsland == "Fountain City" then
    topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
    elseif _G.SelectIsland == "Shank Room" then
    topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
    elseif _G.SelectIsland == "Mob Island" then
    topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
    elseif _G.SelectIsland == "The Cafe" then
    topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
    elseif _G.SelectIsland == "Frist Spot" then
    topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
    elseif _G.SelectIsland == "Dark Area" then
    topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
    elseif _G.SelectIsland == "Flamingo Mansion" then
    topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
    elseif _G.SelectIsland == "Flamingo Room" then
    topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
    elseif _G.SelectIsland == "Green Zone" then
    topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
    elseif _G.SelectIsland == "Factory" then
    topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
    elseif _G.SelectIsland == "Colossuim" then
    topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
    elseif _G.SelectIsland == "Zombie Island" then
    topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
    elseif _G.SelectIsland == "Two Snow Mountain" then
    topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
    elseif _G.SelectIsland == "Punk Hazard" then
    topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
    elseif _G.SelectIsland == "Cursed Ship" then
    topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
    elseif _G.SelectIsland == "Ice Castle" then
    topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
    elseif _G.SelectIsland == "Forgotten Island" then
    topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
    elseif _G.SelectIsland == "Ussop Island" then
    topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
    elseif _G.SelectIsland == "Mini Sky Island" then
    topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
    elseif _G.SelectIsland == "Great Tree" then
    topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
    elseif _G.SelectIsland == "Castle On The Sea" then
    topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
    elseif _G.SelectIsland == "MiniSky" then
    topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
    elseif _G.SelectIsland == "Port Town" then
    topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
    elseif _G.SelectIsland == "Hydra Island" then
    topos(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
    elseif _G.SelectIsland == "Floating Turtle" then
    topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
    elseif _G.SelectIsland == "Mansion" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
    elseif _G.SelectIsland == "Haunted Castle" then
    topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
    elseif _G.SelectIsland == "Ice Cream Island" then
    topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
    elseif _G.SelectIsland == "Peanut Island" then
    topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
    elseif _G.SelectIsland == "Cake Island" then
    topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
    end
    until not _G.TeleportIsland
    end
    StopTween(_G.TeleportIsland)
end)
end
    
-- \\ Dungeon Table // --

do

if World1 then
    Dungeon:Label("Dungeon Raid Only Available At Sea 2 and 3")
end

if World2 or World3 then

local TimeRaid = Dungeon:Label("Wait For Dungeon")
    
spawn(function()
	pcall(function()
	while wait() do
	if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
	TimeRaid:Set(game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
	else
	TimeRaid:Set("Wait For Dungeon")
			end
		end
	end)
end)

Dungeon:Dropdown("Select Dungeon",_G.ColorRaid,{"Dark","Sand","Magma","Rumble","Flame","Ice","Light","Quake","Human: Buddha","Flame","Bird: Phoenix"},function(value)
 _G.Select_Dungeon = value
end)

Dungeon:Toggle("Auto Buy Chip Dungeon",_G.ColorRaid,_G.Auto_Buy_Chips_Dungeon,function(value)
 _G.Auto_Buy_Chips_Dungeon = value
end)


spawn(function()
    while wait() do
		if _G.Auto_Buy_Chips_Dungeon then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = _G.Select_Dungeon
				}
				
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end
    end
end)

Dungeon:Toggle("Auto Start Dungeon",_G.ColorRaid,_G.Auto_StartRaid,function(value)
 _G.Auto_StartRaid = value
end)

spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if World2 then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif World3 then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
    end)

Dungeon:Toggle("Auto Next Island",_G.ColorRaid,_G.Auto_Next_Island,function(value)
 _G.Auto_Next_Island = value
end)

spawn(function()
    while wait() do
        if _G.Auto_Next_Island then
			if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,70,100))
				end
			end
        end
    end
end)

Dungeon:Toggle("Kill Aura",_G.ColorRaid,false,function(value)
 _G.Kill_Aura = value  
end)

spawn(function()
    while wait() do
        if _G.Kill_Aura then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat wait(.1)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.Kill_Aura  or not v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        end
    end
end)

Dungeon:Toggle("Auto Awaken",_G.ColorRaid,_G.Auto_Awake,function(value)
 _G.Auto_Awake = value 
end)


spawn(function()
	while wait(.1) do
		if _G.Auto_Awake then
			pcall(function()
				local args = {
					[1] = "Awakener",
					[2] = "Check"
				}
				
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "Awakener",
					[2] = "Awaken"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end
	end
end)

  
Dungeon:Button("Next Island",_G.ColorRaid,function()
   pcall(function()
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
    topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,70,100))
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
    topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,70,100))
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
    topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,70,100))
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
    topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,70,100))
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
    topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,70,100))
    	end
    end)
end)

Dungeon:Seperator("Law Dungeon",_G.ColorRaid)

Dungeon:Toggle("Auto Buy Law Chip",_G.ColorRaid,_G.Auto_Buy_Law_Chip,function(value)
 _G.Auto_Buy_Law_Chip = value
end)

spawn(function()
	while wait() do
		if _G.Auto_Buy_Law_Chip then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
				
				else
					local args = {
						[1] = "BlackbeardReward",
						[2] = "Microchip",
						[3] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end)
		end
	end
end)

Dungeon:Toggle("Auto Start Law Dungeon",_G.ColorRaid,_G.Auto_Start_Law_Dungeon,function(value)
 _G.Auto_Start_Law_Dungeon = value
end)


spawn(function()
	while wait() do
		if _G.Auto_Start_Law_Dungeon then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
					fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
				end
			end)
		end
	end
end)

Dungeon:Toggle("Auto Kill Law",_G.ColorRaid,_G.Auto_Kill_Law,function(value)
_G.Auto_Kill_Law = value
end)

spawn(function()
	while wait() do
		if _G.Auto_Kill_Law then
			pcall(function()
				if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.Auto_Kill_Law and v.Name == "Order" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat task.wait()
								AutoHaki()
								EquipWeapon(_G.SelectWeapon)
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not _G.Auto_Kill_Law or v.Humanoid.Health <= 0 or not v.Parent
						end
					end
				end 
			end)
		end
	end
end)
end

end

-- \\ Race Table // --

do

if World1 or World2 then
    Race:LabelWarn("Only Available At Sea 3")
end

if World3 then

Race:Seperator("Race V4",_G.ColorRace)

Race:Toggle("Move Cam to Moon",_G.ColorRace,false,function(vu)
	_G.AutoDooHee = vu
end)
    
spawn(function()
    while wait() do
		pcall(function()
			if _G.AutoDooHee then
			    wait(0.5)
				local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
			end
		end)
    end
end)

Race:Button("Teleport To Temple of Time",_G.ColorRace,function(va)
	Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
end)

Race:Button("Teleport To Lever Pull",_G.ColorRace,function(va)
	topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
end)

Race:Button("Teleport To Human Door",_G.ColorRace,function(va)
	topos(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
end)

Race:Button("Teleport To Mink Door",_G.ColorRace,function(va)
	topos(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
end)

Race:Button("Teleport To Shark Door",_G.ColorRace,function(va)
	topos(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
end)

Race:Button("Teleport To Angel Door",_G.ColorRace,function(va)
	topos(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
end)

Race:Button("Teleport To Cyborg Door",_G.ColorRace,function(va)
	topos(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
end)

Race:Button("Teleport To Ghoul Door",_G.ColorRace,function(va)
	topos(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
end)

Race:Seperator("Trials")

Race:Toggle("Auto Complete Trials",_G.ColorRace,false,function(race)
	_G.AutoQuestRace = race
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
				if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
					for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
						if v.Name ==  "snowisland_Cylinder.081" then
							topos(v.CFrame* CFrame.new(0,0,0))
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
					for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
						if v.Name ==  "HumanoidRootPart" then
							topos(v.CFrame* Pos)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
					topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
					for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v.Name == "StartPoint" then
							topos(v.CFrame* CFrame.new(0,10,0))
					  		end
				   		end
					end
				end
        	end
    	end)
	end)
end

end

-- \\ Devil Fruit Table // --

do

    DevilFruit:Seperator("Fruits Sniper",_G.ColorDF)
    
    FruitList = {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Venom-Venom","Shadow-Shadow","Control-Control","Soul-Soul","Dragon-Dragon"}
    
    _G.SelectFruit = ""
    DevilFruit:Dropdown("Select Fruits Sniper",_G.ColorDF,FruitList,function(value)
    _G.SelectFruit = value
    end)
    
    DevilFruit:Toggle("Auto Buy Fruit Sniper",_G.ColorDF,_G.AutoBuyFruitSniper,function(value)
    _G.AutoBuyFruitSniper = value
    end)
    
    DevilFruit:Seperator("Devil Fruits",_G.ColorDF)
    
    DevilFruit:Dropdown("Select Fruits Eat",_G.ColorDF,FruitList,function(value)
    _G.SelectFruitEat = value
    end)
    
    DevilFruit:Toggle("Auto Eat Fruit",_G.ColorDF,_G.AutoEatFruit,function(value)
    _G.AutoEatFruit = value
    end)
    
    spawn(function()
    pcall(function()
    while wait(.1) do
    if _G.AutoEatFruit then
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer()
    end
    end
    end)
    end)
    
    DevilFruit:Toggle("Auto Eat Fruit Hop",_G.ColorDF,_G.AutoEatFruitHop,function(value)
    _G.AutoEatFruitHop = value
    end)
    
    spawn(function()
    pcall(function()
    while wait(.1) do wait(10)
    if _G.AutoEatFruitHop and _G.SelectFruitEat ~= nil then
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat) or not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(_G.SelectFruitEat) then
    Hop()
    else
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer()
    end
    end
    end
    end)
    end)
    
    spawn(function()
    pcall(function()
    while wait(.1) do
    if _G.AutoBuyFruitSniper then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectFruit)
    end
    end
    end)
    end)
    
    DevilFruit:Toggle("Auto Random Fruit",_G.ColorDF,_G.Random_Auto,function(value)
    _G.Random_Auto = value
    end)
    
    spawn(function()
    pcall(function()
    while wait(.1) do
    if _G.Random_Auto then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    end
    end
    end)
    end)
    
    DevilFruit:Button("Random Fruit",_G.ColorDF,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    end)
    
    
    DevilFruit:Toggle("Auto Drop Fruit",_G.ColorDF,_G.DropFruit,function(value)
    _G.DropFruit = value
    end)
    
    spawn(function()
    while wait() do
    if _G.DropFruit then
    pcall(function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if string.find(v.Name, "Fruit") then
    EquipWeapon(v.Name)
    wait(.1)
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
    end
    EquipWeapon(v.Name)
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
    end
    end
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if string.find(v.Name, "Fruit") then
    EquipWeapon(v.Name)
    wait(.1)
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
    end
    EquipWeapon(v.Name)
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
    end
    end
    end)
    end
    end
    end)
    
    DevilFruit:Toggle("Auto Store Fruit",_G.ColorDF,_G.AutoStoreFruit,function(value)
    _G.AutoStoreFruit = value
    end)
    
    spawn(function()
    pcall(function()
    while wait(.1) do
    if _G.AutoStoreFruit then
    for i,v in pairs(FruitList) do
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v)
    end
    end
    end
    end)
    end)
    
    
    DevilFruit:Toggle("Grab Fruit",_G.ColorDF,_G.BringFruit,function(value)
    _G.BringFruit = value
    pcall(function()
    while _G.BringFruit do wait(.1)
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    if v:IsA("Tool") then
    local OldCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame * CFrame.new(0,0,8)
    v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
    wait(.1)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
    end
    end
    end
    end)
end)

end

-- \\ Shop Table // --

do

    Shop:Seperator("Abilities",_G.ColorShop)
    
    Shop:Button("Buy Geppo",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
    end)
    
    Shop:Button("Buy Buso Haki",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
    end)
    
    Shop:Button("Buy Soru",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    end)
    
    Shop:Button("Buy Observation(Ken) Haki",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
    end)
    
    Shop:Seperator("Fighting Style",_G.ColorShop)
    
    Shop:Button("Buy Black Leg",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end)
    
    Shop:Button("Buy Electro",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end)
    
    Shop:Button("Buy Fishman Karate",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end)
    
    Shop:Button("Buy Dragon Claw",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
    end)
    
    Shop:Button("Buy Superhuman",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end)
    
    Shop:Button("Buy Death Step",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end)
    
    Shop:Button("Buy Sharkman Karate",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end)
    
    Shop:Button("Buy Electric Claw",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end)
    
    Shop:Button("Buy Dragon Talon",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end)
    
    Shop:Button("Buy GodHuman",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end)
    
    -----Shop----------------
    Shop:Seperator("Accessory",_G.ColorShop)
    
    Shop:Button("Tomoe Ring",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
    end)
    
    Shop:Button("Black Cape",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
    end)
    
    Shop:Button("Swordsman Hat",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
    end)
    
    Shop:Seperator("Sword",_G.ColorShop)
    
    Shop:Button("Cutlass",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
    end)
    
    Shop:Button("Katana",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
    end)
    
    Shop:Button("Iron Mace",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
    end)
    
    Shop:Button("Duel Katana",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
    end)
    
    Shop:Button("Triple Katana",_G.ColorShop, function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
    end)
    
    Shop:Button("Pipe",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
    end)
    
    Shop:Button("Dual Headed Blade",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
    end)
    
    Shop:Button("Bisento",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
    end)
    
    Shop:Button("Soul Cane",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
    end)
    
    Shop:Seperator("Gun",_G.ColorShop)
    
    Shop:Button("Slingshot",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
    end)
    
    Shop:Button("Musket",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
    end)
    
    Shop:Button("Flintlock",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
    end)
    
    Shop:Button("Refined Flintlock",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
    end)
    
    Shop:Button("Cannon",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
    end)
    
    Shop:Button("Kabucha",_G.ColorShop,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
end)
    
end
    
-- \\ Misc Table // --

do

Misc:Seperator("Open UI",_G.ColorMisc)

Misc:Button("Open Title",_G.ColorMisc,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getTitles")
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Titles.Visible = true
end)

Misc:Button("Open Aura",_G.ColorMisc,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getColors")
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Colors.Visible = true
end)
    
Misc:Button("Open Devil Shop",_G.ColorMisc,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
    game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
end)
    
Misc:Button("Open Inventory",_G.ColorMisc,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
    wait(1)
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
end)
    
Misc:Button("Open Inventory Fruit",_G.ColorMisc,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
    game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
end)

Misc:Seperator("Server",_G.ColorMisc)
    
Misc:Button("Rejoin Server",_G.ColorMisc,function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)
    
Misc:Button("Server Hop",_G.ColorMisc,function()
    Hop()
end)

Misc:Button("Hop To Lower Player",_G.ColorMisc,function()
    getgenv().AutoTeleport = true
    getgenv().DontTeleportTheSameNumber = true
    getgenv().CopytoClipboard = false
    if not game:IsLoaded() then
    print("Game is loading waiting...")
    end
    local maxplayers = math.huge
    local serversmaxplayer;
    local goodserver;
    local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
    function serversearch()
    for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
    if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
    serversmaxplayer = v.maxPlayers
    maxplayers = v.playing
    goodserver = v.id
    end
    end
    end
    function getservers()
    serversearch()
    for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
    if i == "nextPageCursor" then
    if gamelink:find("&cursor=") then
    local a = gamelink:find("&cursor=")
    local b = gamelink:sub(a)
    gamelink = gamelink:gsub(b, "")
    end
    gamelink = gamelink .. "&cursor=" ..v
    getservers()
    end
    end
    end
    getservers()
    if AutoTeleport then
    if DontTeleportTheSameNumber then
    if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
    return warn("It has same number of players (except you)")
    elseif goodserver == game.JobId then
    return warn("Your current server is the most empty server atm")
    end
    end
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
    end
end)
    
Misc:Seperator("Change Teams",_G.ColorMisc)
    
Misc:Button("Join Pirates Team",_G.ColorMisc,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
end)
    
Misc:Button("Join Marines Team",_G.ColorMisc,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines")
end)
    
Misc:Seperator("Boost",_G.ColorMisc)
    
Misc:Button("Unlock Portal",_G.ColorMisc,function()
    _G.UnlockPortal = true
end)
    
spawn(function()
    while wait() do
    pcall(function()
    if _G.UnlockPortal == true then
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
    if v.Name == "NotificationTemplate" then
    if string.find(v.Text,"cannot") then
    v:Destroy()
    end
    end
    end
    end
    end)
    end
end)
    
spawn(function()
    while wait() do
    pcall(function()
    if _G.UnlockPortal == true then
    CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
    MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
    Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
    HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
    if (CastlePostoMansion.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
    end
    if (MansiontoCastlePos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
    end
    if (Castletophydra.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
    end
    if (HydratoCastle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
    end
    end
    end)
    end
end)
    
Misc:Seperator("Codes",_G.ColorMisc)
    
Misc:Button("Redeem All Codes",_G.ColorMisc,function()
    function RedeemCode(value)
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
    end
    for i,v in pairs(x2Code) do
    RedeemCode(v)
    end
end)
    
    Misc:Seperator("State",_G.ColorMisc)
    
    Misc:Dropdown("Select Haki State",_G.ColorMisc,{"State 0","State 1","State 2","State 3","State 4","State 5"},function(value)
    _G.SelectStateHaki = value
    end)
    
    Misc:Button("Change Buso Haki State",_G.ColorMisc,function()
    if _G.SelectStateHaki == "State 0" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",0)
    elseif _G.SelectStateHaki == "State 1" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",1)
    elseif _G.SelectStateHaki == "State 2" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",2)
    elseif _G.SelectStateHaki == "State 3" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",3)
    elseif _G.SelectStateHaki == "State 4" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",4)
    elseif _G.SelectStateHaki == "State 5" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",5)
    end
    end)
    
    Misc:Seperator("ESP",_G.ColorMisc)
    
    Misc:Toggle("ESP Player",_G.ColorMisc,false,function(value)
    ESPPlayer = value
    while ESPPlayer do wait()
    UpdateEspPlayer()
    end
    end)
    
    Misc:Toggle("ESP Chest",_G.ColorMisc,false,function(value)
    ChestESP = value
    while ChestESP do wait()
    UpdateChestEsp()
    end
    end)
    
    Misc:Toggle("ESP Fruit",_G.ColorMisc,false,function(value)
    DevilFruitESP = value
    while DevilFruitESP do wait()
    UpdateBfEsp()
    end
    end)
    
    Misc:Toggle("ESP Flower",_G.ColorMisc,false,function(value)
    FlowerESP = value
    while FlowerESP do wait()
    UpdateFlowerEsp()
    end
    end)
    
    Misc:Toggle("ESP Island",_G.ColorMisc,IslandESP,function(value)
    IslandESP = value
    while IslandESP do wait()
    UpdateIslandESP()
    end
    end)
    
    Misc:Seperator("Abilities",_G.ColorMisc)
    
    Misc:Toggle("Dodge No Cooldown",_G.ColorMisc,false,function(value)
    nododgecool = value
    NoDodgeCool()
    end)
    
    Misc:Toggle("Infinite Energy",_G.ColorMisc,false,function(value)
    InfiniteEnergy = value
    originalstam = LocalPlayer.Character.Energy.Value
    end)
    
    Misc:Toggle("Auto Active Race",_G.ColorMisc,_G.AutoAgility,function(value)
    _G.AutoAgility = value
    end)
    
    spawn(function()
    pcall(function()
    while wait() do
    if _G.AutoAgility then
    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
    end
    end
    end)
    end)
    
    Misc:Toggle("Infinite Ability",_G.ColorMisc,true,function(value)
    InfAbility = value
    if value == false then
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
    end
    end)
    
    spawn(function()
    while wait() do
    if InfAbility then
    InfAb()
    end
    end
    end)
    
    Misc:Toggle("Infinite Obversation Range",_G.ColorMisc,getgenv().InfiniteObRange,function(value)
    getgenv().InfiniteObRange = value
    local VS = game:GetService("Players").LocalPlayer.VisionRadius.Value
    while getgenv().InfiniteObRange do
    wait()
    local player = game:GetService("Players").LocalPlayer
    local char = player.Character
    local VisionRadius = player.VisionRadius
    if player then
    if char.Humanoid.Health <= 0 then
    wait(5)
    end
    VisionRadius.Value = math.huge
    elseif getgenv().InfiniteObRange == false and player then
    VisionRadius.Value = VS
    end
    end
    end)
    
    Misc:Toggle("Infinite Geppo",_G.ColorMisc,getgenv().InfGeppo,function(value)
    getgenv().InfGeppo = value
    end)
    
    spawn(function()
    while wait() do
    pcall(function()
    if getgenv().InfGeppo then
    for i,v in next, getgc() do
    if game:GetService("Players").LocalPlayer.Character.Geppo then
    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo then
    for i2,v2 in next, getupvalues(v) do
    if tostring(i2) == "9" then
    repeat wait(.1)
    setupvalue(v,i2,0)
    until not getgenv().InfGeppo or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
    end
    end
    end
    end
    end
    end
    end)
    end
    end)
    
    Misc:Toggle("Infinite Soru",_G.ColorMisc,getgenv().InfSoru,function(value)
    getgenv().InfSoru = value
    end)
    
    spawn(function()
    while wait() do
    pcall(function()
    if getgenv().InfSoru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
    for i,v in next, getgc() do
    if game:GetService("Players").LocalPlayer.Character.Soru then
    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
    for i2,v2 in next, getupvalues(v) do
    if typeof(v2) == "table" then
    repeat wait(.1)
    v2.LastUse = 0
    until not getgenv().InfSoru or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
    end
    end
    end
    end
    end
    end
    end)
    end
    end)
    
    Misc:Toggle("Walk on Water",_G.ColorMisc,true,function(value)
    _G.WalkWater = value
    end)
    
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.WalkWater then
                    game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
                else
                    game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
                end
            end)
        end
    end)
    
    Misc:Toggle("Fly",_G.ColorMisc,false,function(value)
    Fly = value
    end)
    
    spawn(function()
    while wait() do
    pcall(function()
    if Fly then
    fly()
    end
    end)
    end
end)

end