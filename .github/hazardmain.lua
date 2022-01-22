local Library = {}

Library.Drag = function(Frames) --Not sure who made it
    local UIS = game:GetService("UserInputService")
    function dragify(Frame)
        dragToggle = nil
        local dragSpeed = 6
        dragInput = nil
        dragStart = nil
        local dragPos = nil
        function updateInput(input)
            local Delta = input.Position - dragStart
            local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
            Frame.Position = Position
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
    
    dragify(Frames)
end

Library.new = function(Name)
	for _,Gui in pairs(game:GetService("CoreGui"):GetChildren()) do
		if Gui:IsA("ScreenGui") then
			if Gui.Name == "Rainn Ui Library" then
				Gui:Destroy()
			end
		end
	end

	local ScreenGui = game:GetObjects("rbxassetid://8591920401")[1]
	local TweenPosition,TweenTextColor,TweenColor,TweenBackgroundColor,TweenTextTransparency,TweenSize = loadstring(game:HttpGet("https://pastebin.com/raw/uwLQShmL"))()
	
	ScreenGui.Parent = game:GetService("CoreGui")
	ScreenGui.Name = "Rainn Ui Library"

	local Containor = ScreenGui.Containor
	local Elements = Containor.Elements
	local Pages = Containor.Pages
	local TabsC = Containor.Tabs
	local Main = ScreenGui.ambientShadow.Main
	local Tabs = Main.Tabs
	local Frames = Main.Frames
	local Pages = Containor.Pages

	Library.Drag(ScreenGui.ambientShadow)

	Tabs.TextLabel.Text = " "..Name
	Tabs.Glow.Logo.FTitle.Text = string.sub(Name, 1, 1)

	local TabsLibrary = {}

	function TabsLibrary:Tab(Name, Bool, Size)
		local TabButton
		local TabFrame

		if Bool == true then
			TabButton = TabsC["TabButtonC (Full)"]:Clone()

			TabButton.Parent = Tabs.TabContainor
			TabButton.Visible = true

			TabFrame = Pages["Page"]:Clone()

			TabFrame.Parent = Frames
			TabFrame.Visible = true
		else
			TabButton = TabsC["TabButtonC"]:Clone()

			TabButton.Parent = Tabs.TabContainor
			TabButton.Visible = true

			TabFrame = Pages["Page"]:Clone()

			TabFrame.Parent = Frames
			TabFrame.Visible = false
		end

		TabButton.ButtonFrame.BTitle.Text = Name
		TabButton.Name = Name
		TabFrame.Name = Name
		TabFrame.ScrollingFrame.CanvasSize = UDim2.new(0, 0, Size, 0)

		TabButton.ButtonFrame.TextButton.MouseButton1Down:Connect(function()
			for _,Button in pairs(TabButton.Parent:GetChildren()) do
				if Button.Name ~= Name and Button:IsA("Frame") then
					TweenBackgroundColor(Button.ButtonFrame, {
						["Time"] = 0.1,
						["Color"] = TabsC["TabButtonC"].ButtonFrame.BackgroundColor3
					})

					TweenSize(Button.ButtonFrame, {
						["Time"] = 0.1,
						["Size"] = TabsC["TabButtonC"].ButtonFrame.Size
					})
				end
			end

			TweenBackgroundColor(TabButton.ButtonFrame, {
				["Time"] = 0.1,
				["Color"] = TabsC["TabButtonC (Full)"].ButtonFrame.BackgroundColor3
			})

			TweenSize(TabButton.ButtonFrame, {
				["Time"] = 0.1,
				["Size"] = TabsC["TabButtonC (Full)"].ButtonFrame.Size
			})

			for _,Frame in pairs(TabFrame.Parent:GetChildren()) do
				if Frame.Name ~= Name and Frame:IsA("Frame") then
					Frame.Visible = false
				end
			end

			TabFrame.Visible = true
		end)

		TabFrame.SearchBox.TextBox.Changed:Connect(function()
			for _,Frame in pairs(TabFrame.ScrollingFrame:GetChildren()) do
				if Frame:IsA("Frame") then
					if TabFrame.SearchBox.TextBox.Text == "" then
						for _,Frame in pairs(TabFrame.ScrollingFrame:GetChildren()) do
							if Frame:IsA("Frame") then
								Frame.Visible = true									
							end
						end
					elseif Frame.Name:lower():match(TabFrame.SearchBox.TextBox.Text) and Frame.Name ~= "Ignore" then
						Frame.Visible = true
					else
						Frame.Visible = false
					end
				end
			end
		end)

		local ElementsLibrary = {}

		function ElementsLibrary:Button(Name, Desc, Function)
			local Button = Elements["TextButton"]:Clone()

			Button.Parent = TabFrame.ScrollingFrame
			Button.Visible = true
			Button.Name = Name
			Button.ButtonName.TextLabel.Text = Name
			Button.ButtonDesc.TextLabel.Text = Desc

			local OldColor = Button.ButtonName.UIStroke.Color

			Button.MouseEnter:Connect(function()
				TweenColor(Button.ButtonName.UIStroke, {
					["Time"] = 0.5,
					["Color"] = Color3.fromRGB(53, 73, 95)
				})
			end)

			Button.MouseLeave:Connect(function()
				TweenColor(Button.ButtonName.UIStroke, {
					["Time"] = 0.5,
					["Color"] = OldColor
				})
			end)

			Button.ButtonName.TextButton.MouseButton1Down:Connect(function()
				TweenColor(Button.ButtonName.UIStroke, {
					["Time"] = 0.3,
					["Color"] = Color3.fromRGB(54, 126, 74)
				})

				wait(0.5)

				TweenColor(Button.ButtonName.UIStroke, {
					["Time"] = 0.5,
					["Color"] = OldColor
				})

				pcall(Function)
			end)
		end

		function ElementsLibrary:TextLabel(Text)
			local Label = Elements["TextLabel"]:Clone()

			Label.Parent = TabFrame.ScrollingFrame
			Label.Visible = true
			Label.Name = "Ignore"
			Label.Text.TextLabel.Text = Text
		end

		function ElementsLibrary:Toggle(Name, Desc, Toggled, Function)
			local Button = Elements["ToggleButton"]:Clone()

			Button.Parent = TabFrame.ScrollingFrame
			Button.Visible = true
			Button.Name = Name
			Button.ToggleState.TextLabel.Text = Name
			Button.ToggleDesc.TextLabel.Text = Desc

			local Toggled = Toggled

			if Toggled == true then
				pcall(Function, true)

				TweenColor(Button.ToggleState.UIStroke, {
					["Time"] = 0.5,
					["Color"] = Color3.fromRGB(110, 165, 94)
				})

				TweenTextColor(Button.ToggleState.TextLabel, {
					["Time"] = 0.5,
					["Color"] = Color3.fromRGB(110, 165, 94)
				})
			else
				pcall(Function, false)

				TweenColor(Button.ToggleState.UIStroke, {
					["Time"] = 0.5,
					["Color"] = Color3.fromRGB(165, 101, 96)
				})

				TweenTextColor(Button.ToggleState.TextLabel, {
					["Time"] = 0.5,
					["Color"] = Color3.fromRGB(165, 101, 96)
				})
			end

			Button.ToggleState.TextButton.MouseButton1Down:Connect(function()
				if Toggled == true then
					Toggled = false

					pcall(Function, false)

					TweenColor(Button.ToggleState.UIStroke, {
						["Time"] = 0.5,
						["Color"] = Color3.fromRGB(165, 101, 96)
					})

					TweenTextColor(Button.ToggleState.TextLabel, {
						["Time"] = 0.5,
						["Color"] = Color3.fromRGB(165, 101, 96)
					})
				else
					Toggled = true
					
					pcall(Function, true)

					TweenColor(Button.ToggleState.UIStroke, {
						["Time"] = 0.5,
						["Color"] = Color3.fromRGB(110, 165, 94)
					})

					TweenTextColor(Button.ToggleState.TextLabel, {
						["Time"] = 0.5,
						["Color"] = Color3.fromRGB(110, 165, 94)
					})
				end
			end)
		end

		return ElementsLibrary
	end

	return TabsLibrary
end
