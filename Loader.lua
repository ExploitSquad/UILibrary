local UiLibrary = {}

function Library()
	function AddFrame()
		local Gui = Instance.new("ScreenGui")
		local Frame = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")
		local ContainerFrame = Instance.new("Frame")
		local UnderLine = Instance.new("Frame")
		
		Gui.Name = "Gui"
		Gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
		Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		Frame.AnchorPoint = Vector2.new(0.5,0.5)
		Frame.Parent = Gui
		Frame.BackgroundColor3 = Color3.new(1, 1, 1)
		Frame.BorderColor3 = Color3.new(0.0352941, 0.0352941, 0.0352941)
		Frame.ClipsDescendants = true
		Frame.Position = UDim2.new(0.5,0.5,0.5,0.5)
		Frame.Size = UDim2.new(0, 298, 0, 397)
		
		UIListLayout.Parent = Frame
		UIListLayout.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

		ContainerFrame.Name = "ContainerFrame"
		ContainerFrame.Parent = Frame
		ContainerFrame.BackgroundColor3 = Color3.new(0, 0, 0)
		ContainerFrame.BorderColor3 = Color3.new(0.0470588, 1, 0.572549)
		ContainerFrame.ClipsDescendants = true
		ContainerFrame.Size = UDim2.new(0, 295, 0, 395)
		
		UnderLine.Name = "UnderLine"
		UnderLine.Parent = ContainerFrame
		UnderLine.BackgroundColor3 = Color3.new(0.0470588, 1, 0.572549)
		UnderLine.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
		UnderLine.BorderSizePixel = 0
		UnderLine.Position = UDim2.new(-0.0103898384, 0, 0.0612151697, 0)
		UnderLine.Size = UDim2.new(0, 298,0.001, 0)
		function addTitle(text)
			local Title = Instance.new("TextLabel")
			Title.Name = "Title"
			Title.Parent = ContainerFrame
			Title.BackgroundColor3 = Color3.new(1, 1, 1)
			Title.BackgroundTransparency = 1
			Title.Size = UDim2.new(0, 224, 0, 31)
			Title.Font = Enum.Font.Code
			Title.Text = text
			Title.TextColor3 = Color3.new(1, 1, 1)
			Title.TextSize = 14
            Title.TextYAlignment = Enum.TextYAlignment.Top

			local function RAJXIR_fake_script() -- Frame.Dragify 
				local script = Instance.new('LocalScript', Frame)

				local UIS = game:GetService("UserInputService")
				function dragify(Frame)
					dragToggle = nil
					local dragSpeed = 0.50
					dragInput = nil
					dragStart = nil
					local dragPos = nil
					function updateInput(input)
						local Delta = input.Position - dragStart
						local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
						game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
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
			coroutine.wrap(RAJXIR_fake_script)()
			function addSectionButtons(text2)
				local SectionButton = Instance.new("TextLabel")
				local TitleFrame_Under = Instance.new("Frame")
				local TextButton = Instance.new("TextButton")
				local SectionFrame = Instance.new("ScrollingFrame")
				TitleFrame_Under.Name = "TitleFrame_Under"
				TitleFrame_Under.Parent = ContainerFrame
				TitleFrame_Under.BackgroundColor3 = Color3.new(1, 1, 1)
				TitleFrame_Under.BackgroundTransparency = 1
				TitleFrame_Under.Position = UDim2.new(-0.00677966094, 0, 0.0835443065, 0)
				TitleFrame_Under.Size = UDim2.new(0, 298, 0, 37)

				SectionButton.Name = "SectionButton"
				SectionButton.Parent = TitleFrame_Under
				SectionButton.BackgroundColor3 = Color3.new(1, 1, 1)
				SectionButton.BackgroundTransparency = 1
				SectionButton.Position = UDim2.new(0, 0, 0.108108103, 0)
				SectionButton.Size = UDim2.new(0, 100, 0, 25)
				SectionButton.Font = Enum.Font.Code
				SectionButton.Text = ""
				SectionButton.TextColor3 = Color3.new(1, 1, 1)
				SectionButton.TextSize = 16

				TextButton.Parent = SectionButton
				TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
				TextButton.BackgroundTransparency = 1
				TextButton.Size = UDim2.new(0, 100, 0, 25)
				TextButton.Visible = false
				TextButton.Font = Enum.Font.SourceSans
				TextButton.Text = text2
				TextButton.TextColor3 = Color3.new(0, 0, 0)
				TextButton.TextSize = 14

				SectionFrame.Name = "SectionFrame"
				SectionFrame.Parent = ContainerFrame
				SectionFrame.Active = true
				SectionFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				SectionFrame.Position = UDim2.new(0.0203389823, 0, 0.156962022, 0)
				SectionFrame.Size = UDim2.new(0, 283, 0, 327)
				SectionFrame.ScrollBarImageTransparency = 1
				SectionFrame.BorderSizePixel = 0
				
				SectionButton.MouseEnter:Connect(function()
					SectionButton.TextTransparency = 0.3
                    wait(0.1)
					SectionButton.TextTransparency = 0.4
                    wait(0.1)
					SectionButton.TextTransparency = 0.5
                    wait(0.1)
					SectionButton.TextTransparency = 0.6
                    wait(0.1)
					SectionButton.TextTransparency = 0.7
                    wait(0.1)
					TextButton.Visible = true
				end)
                SectionButton.MouseLeave:Connect(function()
                    SectionButton.TextTransparency = 0.7
                    wait(.1)
					SectionButton.TextTransparency = 0.6
                    wait(.1)
					SectionButton.TextTransparency = 0.5
                    wait(.1)
					SectionButton.TextTransparency = 0.4
                    wait(.1)
					SectionButton.TextTransparency = 0.3
                    TextButton.Visible = false
                end)
			end
		end
	end
end
wait(3)
